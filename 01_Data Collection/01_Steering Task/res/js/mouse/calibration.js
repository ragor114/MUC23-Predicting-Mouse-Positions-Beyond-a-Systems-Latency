var shouldBeDrawed = false;

function enableCalibrationRect() {
    shouldBeDrawed = true;
}

function drawCalibrationRect(ctx, canvas, height) {
    if(!shouldBeDrawed) return;
    ctx.beginPath();
    ctx.fillStyle = "white";

    // ctx.moveTo(canvas.width/2 - height/2, canvas.height/2 - height/2);
    ctx.rect(0, canvas.scrollHeight/2 - height/2, height, height);

    ctx.fill();
}

function clearCalibrationRect() {
    shouldBeDrawed = false;
}

export {drawCalibrationRect, clearCalibrationRect, enableCalibrationRect};