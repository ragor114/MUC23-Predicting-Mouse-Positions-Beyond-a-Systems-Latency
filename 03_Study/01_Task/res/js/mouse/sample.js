import Config from "../config.js";

class Sample{

    #values = {};

    constructor(mouseX, mouseY, tInfo, active, canvas, xResolution, yResolution, lastX, lastY) {
        this.#calculateValues(mouseX, mouseY, tInfo, active, canvas);
        // console.log(this.#values);
        this.#normalizeValues(xResolution, yResolution, lastX, lastY);
    }

    #calculateValues(mouseX, mouseY, tInfo, active, canvas) {
        var tLength, targetWidth, targetXPos, startXPos, distanceToTop, distanceToBottom;
        if(tInfo !== null && tInfo !== undefined) {
            tLength = tInfo.width;
            targetWidth = tInfo.height;
            if(mouseX < canvas.width/2) {
                targetXPos = tInfo.x + tLength;
                startXPos = tInfo.x;
            } else {
                targetXPos = tInfo.x;
                startXPos = tInfo.x + tLength;
            }
            distanceToTop = mouseY - (canvas.height/2 - targetWidth/2);
            distanceToBottom = (canvas.height/2 + targetWidth/2) - mouseY;
        } else {
            tLength = -1;
            targetWidth = -1;
            targetXPos = -1;
            startXPos = -1;
            distanceToTop = -1;
            distanceToBottom = -1;
        }

        let aI = 0;
        if(active) aI = 1;

        // this.#values = [Date.now(), aI, mouseX, mouseY, targetXPos, startXPos, tLength, targetWidth, distanceToTop, distanceToBottom];
        this.#values.timestamp = Date.now();
        this.#values.active = aI;
        this.#values.xPos = mouseX;
        this.#values.yPos = mouseY;
        // TODO: Switch? - Guess no ...
        this.#values.targetX = startXPos;
        this.#values.startX = targetXPos;
        this.#values.tunnelAmplitude = tLength;
        this.#values.tunnelWidth = targetWidth;
        this.#values.yDistanceToTop = distanceToTop;
        this.#values.yDistanceToBottom = distanceToBottom;
        // console.log(this.#values);
    }

    #normalizeValues(xResolution, yResolution, lastX, lastY) {
        this.#normalizeByResolution(xResolution, yResolution);
        // console.log(this.#values.targetX);
        this.#firstOrderDerivate(lastX, lastY, xResolution, yResolution);
        // this.#normalizeByAverages();
    }

    #normalizeByResolution(xResolution, yResolution) {
        this.#values.xPos /= xResolution;
        this.#values.targetX /= xResolution;
        // console.log(this.#values.targetX);
        this.#values.startX /= xResolution;
        this.#values.tunnelAmplitude /= xResolution;

        this.#values.yPos /= yResolution;
        this.#values.tunnelWidth /= yResolution;
        this.#values.yDistanceToTop /= yResolution;
        this.#values.yDistanceToBottom /= yResolution;
    }

    #firstOrderDerivate(lastX, lastY, xRes, yRes) {
        let xSpeed = this.#values.xPos - (lastX/xRes),
            ySpeed = this.#values.yPos - (lastY/yRes);
        
        this.#values.xSpeed = xSpeed;
        this.#values.ySpeed = ySpeed;
    }

    #normalizeByAverages() {
        let averages;
        if(Config.currentArchitecture === "Dense") {
            averages = Config.denseAverages;
        }

        // console.log(this.#values.targetX);
        // Nicht normalisiert werden active und ySpeed
        this.#values.xSpeed /= averages.xSpeedAverage;
        this.#values.targetX /= averages.targetXAverage;
        // console.log(averages.targetXAverage);
        // console.log(this.#values.targetX);
        this.#values.startX /= averages.startXAverage;
        this.#values.tunnelAmplitude /= averages.amplitudeAverage;
        this.#values.tunnelWidth /= averages.widthAverage;
        this.#values.yDistanceToTop /= averages.distanceToTopAverage;
        this.#values.yDistanceToBottom /= averages.distanceToBottomAverage;
    }

    get normalizedValues() {
        return [this.#values.active, this.#values.xSpeed, this.#values.ySpeed, this.#values.targetX, this.#values.startX, this.#values.tunnelAmplitude, this.#values.tunnelWidth, this.#values.yDistanceToTop, this.#values.yDistanceToBottom];
    }

    get xSpeed() {
        return this.#values.xSpeed;
    }

}

export default Sample;