import Config from "../config.js";

// The MTLogger-class saves the MovementTimes for each target
class MTLogger {

    #logList;
    #currInstance;

    constructor() {
        this.#logList = [];
        this.#currInstance = null;
    }

    // If a new rectangle target is created a corresponding MTInstance class is created and stored.
    newTarget(width, length) {
        this.#currInstance = new MTInstance(width, length);
    }

    // If a new narrowing target is created a corresponding MTInstance class is created and stored.
    newTarget(width1, length, width2, reversed) {
        if(!reversed) {
            this.#currInstance = new MTInstance(width1, length, width2);
        } else {
            this.#currInstance = new MTInstance(width2, length, width1);
        }
    }

    // If the user fails on completing the target, a MTInstance with an MT of -1 is stored.
    onFail() {
        this.#currInstance.onFail();
        this.#logList.push(this.#currInstance);
        this.#currInstance = null;
    }

    // If the user succeeds in traversing the target an MTInstance with the time the user took as MT is stored in the list.
    onSuccess(MT) {
        this.#currInstance.onSuccess(MT);
        this.#logList.push(this.#currInstance);
        this.#currInstance = null;
    }

    // This Method returns all los entrys as a JSON-String
    toJSON() {
        return JSON.stringify(this.#logList);
    }

    // This method converts all log entries to a string that corresponds to a csv-row with the colums target-width, target-length, movement-time
    toCSV() {
        let csvString = "width" + Config.CSV_DELIMITER + "length" + Config.CSV_DELIMITER + "MT\n";
        this.#logList.forEach(element => {
            let w = element.width,
                l = element.length,
                mt = element.MT,
                w2,
                lineString = "" + w + Config.CSV_DELIMITER + l + Config.CSV_DELIMITER + mt + "\n";

                // If the target is narrowing the width-column contains the string width-on-the-side-first-traversed - width-on-the-side-last-traversed
                if(element.width2 != undefined) {
                    w2 = element.width2;
                    lineString = "" + w + "-" + w2 + Config.CSV_DELIMITER + l + Config.CSV_DELIMITER + mt + "\n";
                }
                
            csvString += lineString;
        });

        return csvString;
    }

    // This method returns the last into the logList formatted as a CSV line.
    lastInstanceToCSV() {
        let last = this.#logList[this.#logList.length-1],
            lineString = "",
            w = last.width,
            l = last.length,
            mt = last.MT,
            w2,
            wS = "" + w;
        
        if(last.width2 !== undefined) {
            w2 = last.width2;
            wS = "" + w + "-" + w2;
        }

        lineString += wS + Config.CSV_DELIMITER + l + Config.CSV_DELIMITER + mt + "\n";
        
        return lineString;
    }

    get csvHeader() {
        const csvString = "width" + Config.CSV_DELIMITER + "length" + Config.CSV_DELIMITER + "MT\n";
        return csvString;
    }

}

// One MTInstance represents a combination of Target-width, Target-length and the movementtime
class MTInstance {
    constructor(width, length, width2) {
        this.width = width;
        this.length = length;
        if(width2 != undefined) {
            this.width2 = width2;
        }
        this.MT = Number.MAX_SAFE_INTEGER;
    }

    onFail() {
        this.MT = -1;
    }

    onSuccess(MT) {
        this.MT = MT;
    }
}

export default MTLogger;