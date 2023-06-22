/* eslint-disable semi */
/* eslint-disable quotes */

// TODO: Clean up code - please!

import Target from "./target/target.js";
import MouseBall from "./mouse/mouse.js";
import MTLogger from "./logging/mtLogger.js";
import Config from "./config.js";
import MouseLogger from "./logging/mouseLogger.js";
import TopBarHandler from "./ui/topbar.js";
import { getNarrowingCorners } from "./target/cornerCalculate.js";
import uploadData from "./logging/upload.js";
import BottomBarHandler from "./ui/bottomBar.js";
import { formFilledCompletely, getDemographicDataAsCSV, addRealRes } from "./logging/demographicLogger.js";
import { drawCalibrationRect, clearCalibrationRect, enableCalibrationRect } from "./mouse/calibration.js";
import SampleManager from "./prediction/samplemanager.js";
import makePrediction from "./prediction/prediction.js";
import { loadModel } from "./prediction/load_model.js";
import BreakScreenHandler from "./ui/breakDisplay.js";

const canvas = document.getElementById("canvas1"),
    ctx = canvas.getContext("2d"),
    TIMEINTERVAL = 1000 / Config.FPS,
    MOUSE = new MouseBall(Config.MOUSERADIUS, ctx),
    PIXELRATIO = window.devicePixelRatio || 1,
    RESTART_TIMEOUT = Config.RESTART_TIMEOUT_IN_SECONDS * 1000,
    INITIAL_TIMEOUT = Config.INITIAL_TIMEOUT_IN_SECONDS * 1000;
var lastTime = 0,
    elapsed = 0,
    tick = 0,
    startTimer,
    target,
    breakScreenHandler,
    topbarHandler,
    bottomBarHandler,
    logger,
    mouseLogger,
    sampleManager,
    mouseLoggingTimer,
    sampleTimer,
    lengthWidthPermutations,
    permutationsPerBuffer,
    permutationCounter,
    bufferCounter,
    permuationCounterPerBuffer,
    currentBufferIndex,
    lastMousePos,
    currentMousePos,
    active = false,
    fail = false,
    success = false,
    finished = false,
    started = false,
    drawTarget = false,
    wasbreaking = false,
    restartTimer,
    participantId,
    startTime,
    targetCounter,
    intervals = [];

// When the window is loaded the canvas-size is adjusted to fit the entire window.
window.onload = function() {
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
    canvas.style.width = canvas.width + "px";
    canvas.style.height = canvas.height + "px";
    canvas.width *= PIXELRATIO;
    canvas.height *= PIXELRATIO;
    // By overriding the transformation matrix, the drawed elements all have the same physical dimensions on all screen sizes.
    ctx.setTransform(PIXELRATIO, 0, 0, PIXELRATIO, 0, 0);

    //DEBUG:
    // testDataTransformation();
    
    initStartScreen();
};

// When the window is resized the canvas-size is adjusted to fit the entire screen, the target is then recentered.
window.addEventListener("resize", function() {
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
    canvas.style.width = canvas.width + "px";
    canvas.style.height = canvas.height + "px";
    canvas.width *= PIXELRATIO;
    canvas.height *= PIXELRATIO;
    ctx.setTransform(PIXELRATIO, 0, 0, PIXELRATIO, 0, 0);
    if(target != null && target != undefined) {
        target.recenter(canvas.scrollWidth, canvas.scrollHeight);
    }
    // console.log(window.innerHeight);
    // console.log(window.innerWidth);
});

if(Config.calbrationMode) {
    window.addEventListener("mousedown", function() {
        //console.log("Mouse pressed");
        enableCalibrationRect();
    });
    
    window.addEventListener("mouseup", function() {
        //console.log("Mouse released");
        clearCalibrationRect();
    });
}

// This function is called when the site is loaded and handles interactions with the start screen.
function initStartScreen() {
    topbarHandler = new TopBarHandler(document.getElementById("topbar"));
    
    topbarHandler.onStart();
    document.getElementById("start-button").addEventListener("click", function() {
        var form = document.getElementById("demographic-form");
        /*
        if(!formFilledCompletely(form)) {
            //console.log("form not filled");
            topbarHandler.onFormFail();
            return;
        }
        */

        canvas.classList.remove("hidden");

        // Dense-MAE or RNN-MAE
        loadModel(Config.currentModel).then( () => {
            //DEBUG:
            //testDataTransformation();
            console.log("load Model resolved");
            document.getElementById("start-screen").classList.add("hidden");
            document.getElementById("topbar").classList.add("whitetext");
            document.querySelector("body").style.cursor = "none";

            var allStarts = document.getElementById("start-screen").children;
            for (let i = 0; i < allStarts.length; i++) {
                allStarts[i].classList.add("hidden");
            }

            window.addEventListener("mousemove", function(e) {
                MOUSE.onMouseMoveEvent(e);
                if(tick % 10 === 0) {
                    if(currentMousePos) {
                        // console.log(currentMousePos);
                        lastMousePos = JSON.stringify(currentMousePos);
                        // console.log(lastMousePos);
                        lastMousePos = JSON.parse(lastMousePos);
                        // console.log("updated last mouse pos");
                        tick++;
                    }
                }
                currentMousePos = JSON.parse(JSON.stringify(MOUSE.mousePos));
                // console.log("After: " + currentMousePos.x);
                tick++;
            });

            openFullscreen();
            initTask();
        });
    });

    // var idDisplay = document.getElementById("participant-id");
    participantId = getRandomParticipantId(Config.PARTICIPANT_ID_LENGTH);
    // idDisplay.innerHTML = participantId;
}

// This function generetes a random id used to identify a participant.
function getRandomParticipantId(length) {
    var id = "";
    for (let i = 0; i < length; i++) {
        let curr = Math.floor(Math.random() * 10);
        id += curr;
    }
    return id;
}

// this function is called once the task is started.
function initTask() {
    startTimer = setInterval(startFirstTask, INITIAL_TIMEOUT);
    topbarHandler.onInit();
    lengthWidthPermutations = createAllPermutations();
    console.log("Number of Perms: " + lengthWidthPermutations.length);
    permutationsPerBuffer = [];
    for(let i = 0; i < Config.possibleBuffers.length; i++) {
        permutationsPerBuffer.push(createAllPermutations());
    }

    //console.log(lengthWidthPermutations);
    permuationCounterPerBuffer = [];
    for (let i = 0; i < Config.possibleBuffers.length; i++) {
        permuationCounterPerBuffer.push(createZerosList(lengthWidthPermutations));
    }
    bufferCounter = createZerosList(Config.possibleBuffers);
    targetCounter = -1;

    changeBufferLength();

    // console.log(lengthWidthPermutations.length);
    bottomBarHandler = new BottomBarHandler(document.getElementById("bottom-bar-text"), lengthWidthPermutations.length * Config.REPEATS * Config.possibleBuffers.length);
    breakScreenHandler = new BreakScreenHandler(MOUSE, topbarHandler, changeBufferLength, bottomBarHandler);

    target = createNewTarget();

    logger = new MTLogger();
    if(Config.logMousePosition) {
        mouseLogger = new MouseLogger();
        mouseLoggingTimer = setInterval(logMousePosition, TIMEINTERVAL);
    }
    if(Config.usePredicitions) {
        sampleManager = new SampleManager(canvas);
        sampleTimer = setInterval(addSample, TIMEINTERVAL);
    }

    animate();
}

function changeBufferLength() {
    var currentBuffer = Config.bufferLength,
        possibleLengths = Config.possibleBuffers;

    target = null;
    if(bottomBarHandler !== null && bottomBarHandler !== undefined) {
        wasbreaking = true;
    }

    let isDone = true;
    for (let i = 0; i < permuationCounterPerBuffer.length; i++) {
        if(permuationCounterPerBuffer[i].length > 0) {
            isDone = false;
            break;
        }
    }

    if(isDone) {
        console.log("Finished in change buffer length")
        onTaskFinished();
        return;
    }


    let counter = 0,
        whichOne;

    for(let i = 0; i < bufferCounter.length; i++) {
        if(bufferCounter[i] < lengthWidthPermutations.length * Config.REPEATS / Config.breakAfter) {
            counter++;
            whichOne = i;
            if(counter > 1) {
                break;
            }
        }
    }

    if(counter == 1) {
        bufferCounter[whichOne]++;
        currentBufferIndex = whichOne;
        Config.bufferLength = possibleLengths[whichOne];
        // console.log(Config.bufferLength);
        startResetTimer();
        return;
    }


    let randomIndex = Math.floor(Math.random() * possibleLengths.length);

    // console.log(lengthWidthPermutations.length * Config.REPEATS / Config.breakAfter);

    while (possibleLengths[randomIndex] === currentBuffer || bufferCounter[randomIndex] >= lengthWidthPermutations.length * Config.REPEATS / Config.breakAfter) {
        randomIndex = Math.floor(Math.random() * possibleLengths.length);
        // console.log("Retry");
    }

    currentBufferIndex = randomIndex;
    Config.bufferLength = possibleLengths[randomIndex];

    bufferCounter[randomIndex]++;

    // console.log(bufferCounter);

    // console.log(Config.bufferLength);

    // TODO: Not beautiful because last target is displayed
    startResetTimer();
}

//DEBUG
function testDataTransformation() {
    sampleManager = new SampleManager(canvas);

    sampleManager.addDebugSamples();

    console.log(sampleManager.getSmapleListOfLengthN());
    
    let prediction = makePrediction(sampleManager.getSmapleListOfLengthN(), sampleManager.hasInverted, canvas);
    console.log(prediction);
}

function createFilesOnServer() {
    // console.log("creating files...");
    if(Config.logMousePosition) {
        uploadData(participantId, logger.csvHeader, mouseLogger.csvHeader);
        return;
    }
    uploadData(participantId, logger.csvHeader); 
}

function appendNewDataToFiles() {
    // console.log("appending to files...");
    if (Config.logMousePosition) {
        uploadData(participantId, logger.lastInstanceToCSV(), mouseLogger.currLogsToCSV());
        return;
    }
    uploadData(participantId, logger.lastInstanceToCSV());
}

// This function is called when the first target is supposed to be displayed.
function startFirstTask() {
    topbarHandler.onReady(0);
    started = true;
    drawTarget = true;
    clearInterval(startTimer);

    addRealRes(canvas.width, canvas.height);

    createFilesOnServer();
}

// This function is called repeatedly to save the current mouse position. It is called once per frame to log mouse positions at a constant rate.
function logMousePosition() {
    var targetXPos, startXPos, tLength, targetWidth, distanceToTop, distanceToBottom;
    var mousePos = MOUSE.mousePos;
    if(target !== null && target !== undefined) {
        var tInfo = target.targetXPosYPosWidthHeight;
        tLength = tInfo.width;
        targetWidth = tInfo.height;
        if(mousePos.displayX < canvas.width/2) {
            targetXPos = tInfo.x + tLength;
            startXPos = tInfo.x;
        } else {
            targetXPos = tInfo.x;
            startXPos = tInfo.x + tLength;
        }
        distanceToTop = mousePos.y - (canvas.height/2 - targetWidth/2);
        distanceToBottom = (canvas.height/2 + targetWidth/2) - mousePos.y;
    } else {
        tLength = -1;
        targetWidth = -1;
        targetXPos = -1;
        startXPos = -1;
        distanceToTop = -1;
        distanceToBottom = -1;
    }
    mouseLogger.onMouseMove(Date.now(), active, mousePos.x, mousePos.y, targetXPos, startXPos, tLength, targetWidth, distanceToTop, distanceToBottom, Config.bufferLength);
    //console.log(JSON.parse(mouseLogger.toJSON()));
}

function addSample() {
    var tInfo = null;
    if(target !== null && target !== undefined) tInfo = target.targetXPosYPosWidthHeight;
    sampleManager.addSample(MOUSE.mousePos.x, MOUSE.mousePos.y, tInfo, active);
    // console.log(sampleManager.getSmapleListOfLengthN(Config.samplesForDensePrediction));
}

// This funciton is called when the participant has completed all tasks.
// It is used to reset all intervals, start the data upload and display the endscreen.
function onTaskFinished() {
    // console.log("In onFinished");
    finished = true;
    closeFullscreen();
    clearInterval(mouseLoggingTimer);
    clearInterval(restartTimer);
    /*
    if(Config.logMousePosition) {
        uploadData(participantId, logger.toCSV(), getDemographicDataAsCSV(), mouseLogger.toCSV());
    } else {
        uploadData(participantId, logger.toCSV(), getDemographicDataAsCSV());
    }
    */
    canvas.classList.add("hidden");
    document.getElementById("end-screen").classList.remove("hidden");
    document.querySelector("body").style.cursor = "auto";
    document.getElementById("topbar").classList.remove("whitetext");
    document.getElementById("participant-id-end").innerHTML = participantId;

    topbarHandler.onAllTasksCompleted();
    bottomBarHandler.onFinished();
}

// starts the fullscreen mode
function openFullscreen() {
    var docu = document.documentElement;
    if(docu.requestFullscreen) {
        docu.requestFullscreen();
    } else if (docu.webkitRequestFullscreen) {
        docu.webkitRequestFullscreen();
    } else if(docu.msRequestFullscreen) {
        docu.msRequestFullscreen();
    }
}

// leaves fullscreen mode
function closeFullscreen() {
    var docu = document.documentElement;
    if(document.exitFullscreen) {;
        document.exitFullscreen();
    } else if (docu.webkitExitFullscreen) {
        docu.webkitExitFullscreen();
    } else if(docu.msExitFullscreen) {
        docu.msExitFullscreen();
    }
}

// creates a new target, width and lengths are combined randomly, each width and each length is chosen REPEATS-times.
function createNewTarget() {
    let counter = 0;

    while(counter < permutationsPerBuffer[currentBufferIndex].length) {
        counter++;
        let i = Math.floor(Math.random() * permutationsPerBuffer[currentBufferIndex].length);

        permuationCounterPerBuffer[currentBufferIndex][i]++;
        //console.log(permutationCounter);
        let newTarget = new Target(ctx, canvas.scrollWidth, canvas.scrollHeight, permutationsPerBuffer[currentBufferIndex][i][0], permutationsPerBuffer[currentBufferIndex][i][1]);
        if(permuationCounterPerBuffer[currentBufferIndex][i] === Config.REPEATS) {
            permuationCounterPerBuffer[currentBufferIndex].splice(i, 1);
            permutationsPerBuffer[currentBufferIndex].splice(i, 1);
        }
        targetCounter++;
        
        console.log("Current Buffer Index: " + currentBufferIndex);
        console.log("PermutationsPerBufferCounter: ");
        console.log(permuationCounterPerBuffer[currentBufferIndex]);

        return newTarget;
    }

    console.log("Finished in createNewTarget");

    return null;
}

// This function returns an array of arrays in which all widths are combined once with each length.
function createAllPermutations() {
    let perms = [];
    Config.targetLengths.forEach(len => {
        Config.targetWidths.forEach(wid => {
            let combi = [len, wid];
            perms.push(combi);
        });
    });
    return perms;
}

// Creates a list with zero values, that is as long as the list in the parameter
function createZerosList(originalList) {
    let list = [];
    for (let i = 0; i < originalList.length; i++) {
        list.push(0);
    }
    return list;
}

// this function is called for each frame
function animate() {
    const deltaTime = Date.now() - lastTime;

    /*
    if(intervals.length < 100 && lastTime !== 0) {
        intervals.push(deltaTime);
    } else if (intervals.length == 100) {
        var avg = 0;
        for(let i = 0; i < intervals.length; i++) {
            avg += intervals[i];
        }
        avg = avg/intervals.length;
        var rfr = 1000/avg;
        console.log("Display Refreshrate: " + rfr);
        intervals.push(-1);
    }
    */

    lastTime = Date.now();
    // console.log(TIMEINTERVAL);
    elapsed += deltaTime;
    if(elapsed >= TIMEINTERVAL && !finished) {
        draw();
        // console.log(elapsed);
        elapsed = 0;
    }
    var request = requestAnimationFrame(animate);
    if(finished) {
        cancelAnimationFrame(request);
        return;
    }
}

// Resets the target, if the target was completed successfully a new target is generated, if not the old target is reused
function reset() {
    if(success) {
        target = createNewTarget();
        if(!wasbreaking) {
            bottomBarHandler.onSuccess();
        } else {
            wasbreaking = false;
        }
        if(target == null) {
            // console.log("finished");
            // onTaskFinished();
            // changeBufferLength();
            clearInterval(restartTimer);
            breakScreenHandler.showBreakScreen(false);
            return;
        }
    } else {
        bottomBarHandler.onFail();
    }
    active = false;
    fail = false;
    success = false;
    topbarHandler.onReady(targetCounter);
    if(target.reversed) {
        target.setReversed();
    }
    clearInterval(restartTimer);
}

// If this function is called the target is Reset in RESTART_TIMEOUT milliseconds.
function startResetTimer() {
    restartTimer = setInterval(reset, RESTART_TIMEOUT);
}

// This funtion returns true if the participant left the target through the top or bottom border or through the same side-border he/she entered through.
function checkFail(topBorder, bottomBorder, leftBorder, rightBorder) {
    if(currentMousePos.displayY < topBorder) return true;
    if(currentMousePos.displayY > bottomBorder) return true;
    if(!target.reversed && currentMousePos.displayX < leftBorder) return true;
    if(target.reversed && currentMousePos.displayX > rightBorder) return true;
    return false;
}

// This method is called when the participant makes an error. This error is then logged.
function onFailed() {
    fail = true;
    active = false;
    target.onFail(currentMousePos.displayX);
    logger.onFail();
    topbarHandler.onFail();
    startResetTimer();
    appendNewDataToFiles();
}

// This method returns true if the mouse leaves the target through the opposing side-border from the one it entered through.
function checkSuccess(tInfo) {
    if(!target.reversed && currentMousePos.displayX > tInfo.x + tInfo.width) return true;
    if(target.reversed && currentMousePos.displayX < tInfo.x) return true;
    return false;
}

// If the user succeeded in traversing a target the time he/she took is logged.
function onSuccess() {
    var breaking;
    success = true;
    active = false;
    logger.onSuccess(Date.now() - startTime);
    // console.log(logger.toJSON());
    // console.log(logger.toCSV());
    topbarHandler.onSuccess();
    breaking = breakScreenHandler.checkForBreak();
    if(!breaking) {
        startResetTimer();
    }
    appendNewDataToFiles();
}

// This mehtod returns true if the participant entered the target through a side-border.
function hasEntered(tInfo) {
    // console.log("Checking entered");
    if(targetCounter % 2 == 0) {
        if(currentMousePos.displayX >= tInfo.x && currentMousePos.displayX <= tInfo.x + tInfo.width && currentMousePos.displayY >= tInfo.y && currentMousePos.displayY <= tInfo.y + tInfo.height && lastMousePos.displayX <= currentMousePos.displayX && lastMousePos.displayX <= canvas.width/2 && lastMousePos.displayX < tInfo.x) {
            // console.log("lastMouse: " + lastMousePos.x);
            // console.log("currMouse: " + currentMousePos.x);
            // console.log("tInfo.x: " + tInfo.x);
            return true;
        }
    } else {
        // console.log("should enter from right");
        if(tInfo.height2) {
            let y = getNarrowingCorners(tInfo.x, tInfo.y, tInfo.width, tInfo.height, tInfo.height2).pos2[1];
            //console.log(y);
            if(currentMousePos.displayX <= tInfo.x + tInfo.width && currentMousePos.displayX >= tInfo.x && currentMousePos.displayY >= y && currentMousePos.displayY <= y + tInfo.height2 && lastMousePos.displayX >= currentMousePos.displayX && lastMousePos.displayX >= canvas.width/2 && lastMousePos.displayX > tInfo.x + tInfo.width) {
                target.setReversed();
                tInfo.reversed = true;
                return true;
            }
        } else {
            // console.log("no height2");
            if(currentMousePos.displayX <= tInfo.x + tInfo.width && currentMousePos.displayX >= tInfo.x && currentMousePos.displayY >= tInfo.y && currentMousePos.displayY <= tInfo.y + tInfo.height && lastMousePos.displayX >= currentMousePos.displayX && lastMousePos.displayX > tInfo.x + tInfo.width) {
                // console.log("has Entered from right");
                target.setReversed();
                tInfo.reversed = true;
                return true;
            }
        }
    }
    return false;
}

// This method checks if the mouse entered the target and informs the logger that logging the time should start.
function checkStart(tInfo) {
    if(hasEntered(tInfo)) {
        //console.log("started");
        active = true;
        startTime = Date.now();
        if(!tInfo.height2) {
            logger.newTarget(tInfo.height, tInfo.width, Config.bufferLength);
        } else {
            logger.newTarget(tInfo.height, tInfo.width, tInfo.height2, tInfo.reversed);
            //console.log(tInfo);
        }
    }
}

// this function starts and ends the task, depending on the mouse position in relation to the target
function checkStartAndFinish() {
    if(target == null) return;
    var tInfo = target.targetXPosYPosWidthHeight;
    if(active === false && lastMousePos != undefined && !fail && !success) {
        // the task is started, when the mouse enters the target from the left side
        checkStart(tInfo);
    }
    if(active === true) {
        // case 1: left through top or through bottom -> fail
        if(!tInfo.topProjection) {
            if(checkFail(tInfo.y, tInfo.height + tInfo.y, tInfo.x, tInfo.x + tInfo.width)) {
                onFailed();
                return;
            }
        } else {
            if(checkFail(tInfo.topProjection[1], tInfo.bottomProjection[1], tInfo.x, tInfo.x + tInfo.width)) {
                onFailed();
                return;
            }
        }
        // case 2: left through right side -> success, new target
        if(checkSuccess(tInfo)) {
            onSuccess();
            return;
        }
    }
}

// This function is repeatedly called the value of the the constant fps determines how often the function is called per second.
function draw() {
    if(finished) return;
    ctx.clearRect(0, 0, canvas.width, canvas.height);

    if(drawTarget && !breakScreenHandler.isShowing) {
        checkStartAndFinish();
        if(target != null) {
            target.draw();
            if(active) {
                target.updateFill(MOUSE.mousePos.displayX);
            }
            if(fail) {
                target.drawFail();
            }
            if(success) {
                target.drawSuccess();
            }
        } else if(started){
            topbarHandler.onFinished();
        }
    }
    
    drawCalibrationRect(ctx, canvas, 200);

    // await result!
    makePrediction(sampleManager.getSmapleListOfLengthN(), sampleManager.hasInverted, canvas).then( prediction => {
        // console.log("predicted:");
        // console.log(prediction);
        MOUSE.setPredictedPosition(prediction);
        MOUSE.draw();
    });

    /*
    console.log(prediction);
    MOUSE.setPredictedPosition(prediction);
    MOUSE.draw();
    */
}