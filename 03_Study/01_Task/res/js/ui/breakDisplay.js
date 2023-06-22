import Config from "../config.js";


var screen,
    mouseCursor,
    tb,
    cb;

function hideBreakScreen() {
    screen.classList.add("hidden");

    let children = screen.children;
    for(let i = 0; i < children.length; i++) {
        children[i].classList.add("hidden");
    }

    document.querySelector("body").style.cursor = "none";

    cb();
    mouseCursor.show();
    tb.show();
}

class BreakScreenHandler {

    #successes;
    #breakScreen;
    #mouse;
    #topBar;
    #bottomBar;

    constructor(mouse, topBar, callback, bottomBar) {
        this.#successes = 0;
        this.#mouse = mouse;
        mouseCursor = mouse;
        this.#topBar = topBar;
        this.#bottomBar = bottomBar;
        console.log(this.#bottomBar);
        tb = topBar;
        cb = callback;
        this.#breakScreen = document.getElementById("break-screen");
        screen = this.#breakScreen;
        document.getElementById("continue-button").addEventListener("click", hideBreakScreen);
    }

    checkForBreak() {
        this.#successes++;

        if(this.#successes % Config.breakAfter === 0 && this.#successes !== 0) {
            this.showBreakScreen(true);
            return true;
        }

        return false;
    }

    showBreakScreen(increaseCounter) {
        this.#breakScreen.classList.remove("hidden");

        if(increaseCounter && this.#bottomBar !== null && this.#bottomBar !== undefined) {
            this.#bottomBar.onSuccess();
        }

        let children = this.#breakScreen.children;
        for(let i = 0; i < children.length; i++) {
            children[i].classList.remove("hidden");
        }

        document.querySelector("body").style.cursor = "auto";

        this.#mouse.hide();
        this.#topBar.hide();
        this.#successes = 0;
    }

    /*
    hideBreakScreen() {
        this.#breakScreen.classList.add("hidden");

        let children = this.#breakScreen.children;
        for(let i = 0; i < children.length; i++) {
            children[i].classList.add("hidden");
        }

        document.querySelector("body").style.cursor = "none";

        this.#mouse.show();

    }
    */

    get isShowing() {
        return !(this.#breakScreen.classList.contains("hidden"));
    }

}

export default BreakScreenHandler;