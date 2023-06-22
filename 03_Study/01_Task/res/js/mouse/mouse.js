import Config from "../config.js";

var mouseXPositions = [0];
var mouseYPositions = [0];

var mousePosition = {
    x: 0,
    y: 0,
    displayX: 0,
    displayY: 0,
}

function setMousePosition(x, y) {
    mousePosition.x = x;
    mousePosition.y = y;
    mouseXPositions.push(x);
    mouseYPositions.push(y);
}

// The MouseBall replaces the mouse.
class MouseBall {
    #radius;
    #ctx;
    #hidden;

    constructor(radius, ctx) {
        if(Config.calbrationMode) {
            this.#radius = 4 * radius;
        } else {
            this.#radius = radius;
        }
        
        this.#ctx = ctx;
        this.#hidden = false;
    }

    // This function is called every time the mouse is moved to update the balls position.
    onMouseMoveEvent(e) {
        setMousePosition(e.x, e.y);
    }

    setPredictedPosition(prediction) {
        //mousePosition.displayX = mouseXPositions[mouseXPositions.length - 1];
        // mousePosition.displayY = mouseYPositions[mouseYPositions.length - 1];
        mousePosition.displayX = mouseXPositions[mouseXPositions.length - 1 - Config.bufferLength] + prediction[0];
        mousePosition.displayY = mouseYPositions[mouseYPositions.length - 1 - Config.bufferLength] + prediction[1];
    }

    // This method draws the ball on the canvas.
    draw() {
        if(!this.#hidden) {
            this.#ctx.beginPath();
            this.#ctx.arc(mousePosition.displayX, mousePosition.displayY, this.#radius, 0, 2*Math.PI, false);
            // this.#ctx.arc(mousePosition.x, mousePosition.y, this.#radius, 0, 2*Math.PI, false);
            this.#ctx.fillStyle = "red";
            this.#ctx.fill();
        }
    }

    hide() {
        this.#hidden = true;
    }

    show() {
        this.#hidden = false;
    }

    // this getter allows other components access to the position of the cursor.
    get mousePos() {
        return mousePosition;
    }
}

export default MouseBall;