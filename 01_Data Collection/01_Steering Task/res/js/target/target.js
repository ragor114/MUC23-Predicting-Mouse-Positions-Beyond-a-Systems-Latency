import { getNarrowingCorners } from "./cornerCalculate.js";
const margin = 100;
var filled = false;

// A target object represents the tunnel the participant has to move through.
class Target {

    #ctx;
    #canvasWidth;
    #canvasHeight;
    #width;
    #height;
    #x;
    #y;
    #failWidth;
    #points;
    #lastMouseX;
    #reversed;

    constructor(ctx, canvasWidth, canvasHeight, width, height) {
        this.#ctx = ctx;
        this.#canvasWidth = canvasWidth;
        this.#canvasHeight = canvasHeight;
        this.#width = width;
        this.#height = height;
        this.#x = this.#calculateXPos();
        this.#y = this.#calculateYPos();
        this.#failWidth = 0;
        this.#points = null;
        this.#reversed = false;
        // console.log("Canvas Width: " + canvasWidth + " CanvasHeight: " + canvasHeight + " x: " + this.#x + " y: " + this.#y);
    }

    // This method is called, when the window size is changed, it adjust the position of the target to remain centered.
    recenter(canvasWidth, canvasHeight) {
        this.#canvasWidth = canvasWidth;
        this.#canvasHeight = canvasHeight;
        this.#x = this.#calculateXPos();
        this.#y = this.#calculateYPos();
        if(this.#points != null) {
            this.#points = getNarrowingCorners(this.#x, this.#y, this.#width, this.#height[0], this.#height[1]);
        }
        // console.log("RESIZE Canvas Width: " + canvasWidth + " CanvasHeight: " + canvasHeight + " x: " + this.#x + " y: " + this.#y);
    }

    // This method returns an x-Position for a centered target.
    #calculateXPos() {
        return this.#canvasWidth / 2 - this.#width / 2;
    }

    // This method returns an y-Position for a centered target.
    #calculateYPos() {
        if(typeof this.#height == "number") {
            return this.#canvasHeight / 2 - this.#height / 2;
        } else {
            return this.#canvasHeight / 2 - this.#height[0] / 2;
        }
    }

    // This function fills the target with a rectangle.
    #drawFill(width, color) {
        this.#ctx.beginPath();
        this.#ctx.fillStyle = color;
        // If the target is traversed from left to right the rectangle starts at the top left corner and ends at the mouse position.
        if(!this.#reversed) {
            if(typeof this.#height == "number") {
                this.#ctx.rect(this.#x, this.#y, width, this.#height);
            } else {
                let projectedPoints = this.#getProjectedTopAndBottomPoint(width),
                    topPoint = projectedPoints[0],
                    bottomPoint = projectedPoints[1];
                
                this.#ctx.moveTo(this.#points.pos1[0], this.#points.pos1[1]);
                this.#ctx.lineTo(topPoint[0], topPoint[1]);
                this.#ctx.lineTo(bottomPoint[0], bottomPoint[1]);
                this.#ctx.lineTo(this.#points.pos4[0], this.#points.pos4[1]);
                this.#ctx.lineTo(this.#points.pos1[0], this.#points.pos1[1]);
            }
        } else {
            // If the target is traversed from right to left the rectangle is filled from the mouse position to the right border.
            if(typeof this.#height == "number") {
                this.#ctx.rect(this.#x + this.#width - width, this.#y, width, this.#height);
            } else {
                let projectedPoints = this.#getProjectedTopAndBottomPoint(width),
                    topPoint = projectedPoints[0],
                    bottomPoint = projectedPoints[1];

                this.#ctx.moveTo(topPoint[0], topPoint[1]);
                this.#ctx.lineTo(this.#points.pos2[0], this.#points.pos2[1]);
                this.#ctx.lineTo(this.#points.pos3[0], this.#points.pos3[1]);
                this.#ctx.lineTo(bottomPoint[0], bottomPoint[1]);
                this.#ctx.lineTo(topPoint[0], topPoint[1]);
            }
        }
        this.#ctx.fill();
    }

    // This function projects an x-Koordinate onto the top and bottom line of a narrowing or widening tunnel.
    #getProjectedTopAndBottomPoint(xPos) {
        if(this.#points == null) return [0, 0];
        let amountFilled = 0,
            topPoint,
            bottomPoint;
        if(!this.#reversed) {
            amountFilled = (xPos) / (this.#points.pos2[0] - this.#points.pos1[0]);
            topPoint = [this.#x + xPos, (this.#points.pos2[1] - this.#points.pos1[1]) * amountFilled + this.#y],
            bottomPoint = [this.#x + xPos, (this.#points.pos3[1] - this.#points.pos4[1]) * amountFilled + this.#y + this.#height[0]];
        } else {
            amountFilled = (xPos) / (this.#points.pos1[0] - this.#points.pos2[0]);
            topPoint = [this.#x + this.#width - xPos, (this.#points.pos1[1] - this.#points.pos2[1]) * amountFilled + this.#points.pos2[1] + this.#height[1] * amountFilled],
            bottomPoint = [this.#x + this.#width - xPos, (this.#points.pos3[1] - this.#points.pos4[1]) * amountFilled + this.#points.pos2[1] + this.#height[1]];
        }
        return [topPoint, bottomPoint];
    }

    // When the mouse is moved the target is filled
    updateFill(mouseX) {
        let width = 0;
        if(!this.#reversed) {
            if(!filled && mouseX <= this.#x + this.#width && mouseX >= this.#x) {
                width = mouseX - this.#x;
                this.#lastMouseX = width;
            } else if (filled || mouseX >= this.#x) {
                width = this.#width
                this.#lastMouseX = this.#width;
                filled = true;
            }
        } else {
            if(!filled && mouseX >= this.#x && mouseX <= this.#x + this.#width) {
                width = this.#x + this.#width - mouseX;
                this.#lastMouseX = width;
            } else if (filled || mouseX >= this.#x) {
                width = this.#width
                this.#lastMouseX = this.#width;
                filled = true;
            }
        }
        this.#drawFill(width, "green");
    }

    // When the target is completed the entire rectangle is filled green.
    drawSuccess() {
        this.#drawFill(this.#width, "green");
    }

    // When the user failed the last mouse position in the target is filled
    onFail(mouseX) {
        if(!this.#reversed) {
            this.#failWidth = mouseX > this.#x ? mouseX - this.#x : this.#width;
        } else {
            this.#failWidth = mouseX < this.#x + this.#width ? this.#x + this.#width - mouseX : this.#width;
        }

        if(this.#failWidth >= this.#width) {
            this.#failWidth = this.#width;
        }

    }

    // If the user fails the rectangle is filled with red color up to the last position of the mouse cursor in the target.
    drawFail() {
        this.#drawFill(this.#failWidth, "red");
    }

    // draws the current target
    draw() {
       this.#drawTargetBorder();
    }

    get reversed() {
        return this.#reversed;
    }

    setReversed() {
        this.#reversed = !this.#reversed;
        // console.log("Reversed = " + this.#reversed);
    }

    // This method draws the white border that marks the target.
    #drawTargetBorder() {
        this.#ctx.beginPath();
        this.#ctx.strokeStyle = "white";
        this.#ctx.lineWidth = 1;
        if(typeof this.#height == "number") {
            // Simple Tunnels are rectangles
            this.#ctx.rect(this.#x, this.#y, this.#width, this.#height);
        } else {
            // Narrowing tunnels are lines between 4 points
            if(this.#points == null) {
                this.#points = getNarrowingCorners(this.#x, this.#y, this.#width, this.#height[0], this.#height[1]);
            }
            this.#ctx.moveTo(this.#points.pos1[0], this.#points.pos1[1]);
            this.#ctx.lineTo(this.#points.pos2[0], this.#points.pos2[1]);
            this.#ctx.lineTo(this.#points.pos3[0], this.#points.pos3[1]);
            this.#ctx.lineTo(this.#points.pos4[0], this.#points.pos4[1]);
            this.#ctx.lineTo(this.#points.pos1[0], this.#points.pos1[1]);
        }
        this.#ctx.stroke();
    }

    // This method returns all relevant information about the target.
    get targetXPosYPosWidthHeight() {
        if(typeof this.#height == "number") {
            return {
                x: this.#x,
                y: this.#y,
                width: this.#width,
                height: this.#height,
            };
        } else {
            return {
                x: this.#x,
                y: this.#y,
                width: this.#width,
                height: this.#height[0],
                height2: this.#height[1],
                topProjection: this.#getProjectedTopAndBottomPoint(this.#lastMouseX)[0],
                bottomProjection: this.#getProjectedTopAndBottomPoint(this.#lastMouseX)[1],
                reversed: this.#reversed,
            };
        }
    }

}

export default Target;