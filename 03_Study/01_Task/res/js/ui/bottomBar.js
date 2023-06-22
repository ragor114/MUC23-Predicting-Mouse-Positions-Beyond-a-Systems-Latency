// The BottomBarHandler-class manages what is displayed in the bottom bar
class BottomBarHandler {

    #element;
    #errors;
    #successes;
    #errorrate;
    #numberOfTargets;

    constructor(bottomBarElement, numberOfTargets) {
        this.#element = bottomBarElement;

        this.#element.classList.add("whitetext");
        this.#element.parentElement.classList.remove("hidden");

        this.#errors = 0;
        this.#errorrate = 0;
        this.#successes = 0;
        this.#numberOfTargets = numberOfTargets;

        this.#updateBottomBar();
    }

    // If the user succeeds the number of successfully done tasks is increased.
    onSuccess() {
        this.#successes++;
        this.#calculateErrorrate();
    }

    // If the user fails the number of failed tasks is increased.
    onFail() {
        this.#errors++;
        this.#calculateErrorrate();
    }

    // If the user completed all tasks, the bottom bar is hidden.
    onFinished() {
        this.#element.parentElement.classList.add("hidden");
    }

    // The Errorrate is the number of errors devided by the total number of tasks
    #calculateErrorrate() {
        this.#errorrate = this.#errors / (this.#errors + this.#successes);
        this.#errorrate = Math.round(this.#errorrate * 100);
        this.#updateBottomBar();
    }

    // The Bottombar displays the number of completed tasks, remaining tasks and the errorrate in percent.
    #updateBottomBar() {
        let bottombarText = `Finished ${this.#successes}/${this.#numberOfTargets}. Errorrate: ${this.#errorrate}%.`;
        // If the errorrate is below 5% the user is encouraged to hurry up, if it is above the user is encouraged to be more careful.
        /*
        if(this.#errorrate < 5) {
            bottombarText += " Please hurry up!";
        } else {
            bottombarText += " You may slow down a bit."
        }
        */
        this.#element.innerHTML = bottombarText;
    }

}


export default BottomBarHandler;