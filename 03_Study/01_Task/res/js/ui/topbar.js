const FAIL_TEXT = "Failed, please retry!",
    READY_TEXT_LEFT = "Move your mouse through the tunnel from left to right.",
    READY_TEXT_RIGHT = "Move your mouse through the tunnel from right to left.",
    SUCCESS_TEXT = "SUCCESS!",
    FINISHED_TEXT = "Please wait",
    START_TEXT = "Mouse Prediction Study",
    INITIAL_TEXT = "Move your mouse to the left side.",
    FORM_TEXT = "Please completely fill out the form!",
    ALL_TASKS_COMPLETED = "You completed all tasks!";

function setText(element, text) {
    element.innerHTML = text;
}

// The TopbarHandler-class changes the header of the page to give the user instructions.
class TopBarHandler{

    #element;

    constructor(element) {
        this.#element = element;
    }

    #setElementText(text) {
        setText(this.#element, text);
    }

    onFail() {
        this.#setElementText(FAIL_TEXT);
    }

    onReady(targetCounter) {
        if(targetCounter % 2 === 0) this.#setElementText(READY_TEXT_LEFT); 
        else this.#setElementText(READY_TEXT_RIGHT);
    }

    onSuccess() {
        this.#setElementText(SUCCESS_TEXT);
    }

    onFinished() {
        this.#setElementText(FINISHED_TEXT);
    }

    onStart() {
        this.#setElementText(START_TEXT);
    }

    onInit() {
        this.#setElementText(INITIAL_TEXT);
    }

    onFormFail() {
        this.#setElementText(FORM_TEXT);
    }

    hide() {
        this.#element.classList.add("hidden");
    }

    show() {
        this.#element.classList.remove("hidden");
    }

    onAllTasksCompleted() {
        this.#setElementText(ALL_TASKS_COMPLETED);
    }
}

export default TopBarHandler;