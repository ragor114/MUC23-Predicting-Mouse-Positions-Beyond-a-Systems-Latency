import Config from "../config.js";

// The MouseLogger saves the x- and y-Position of the mouse every time it is moved.
// It logs a timestamp (for assesing the frequency of movements), if the participant was doing a task (0 or 1) and the position.
class MouseLogger {
    #logList;
    #currLogs;

    constructor() {
        this.#logList = [];
        this.#currLogs = [];
    }

    // Additional Information: xPos of currentTarget, xPos of starting line, length of current target, width of current target, dy to top, dy to bottom
    onMouseMove(timestamp, active, x, y, xPosTarget, xPosStart, targetLength, targetWidth, distanceToTopBorder, distanceToBottomBorder, buffer) {
        let aI = 0;
        if(active) aI = 1;
        let compensation = Math.round((6 - buffer) * (1000/60));
        // console.log(targetWidth);
        this.#logList.push([timestamp, aI, x, y, xPosTarget, xPosStart, targetLength, targetWidth, distanceToTopBorder, distanceToBottomBorder, compensation]);
        this.#currLogs.push([timestamp, aI, x, y, xPosTarget, xPosStart, targetLength, targetWidth, distanceToTopBorder, distanceToBottomBorder, compensation]);
    }

    // The logged data can be exported in JSON or CSV format.
    toJSON() {
        return JSON.stringify(this.#logList);
    }

    toCSV() {
        let csvString = "timestamp" + Config.CSV_DELIMITER + "active" + Config.CSV_DELIMITER +  "xPos" + Config.CSV_DELIMITER + "yPos" + Config.CSV_DELIMITER + "TargetX" + Config.CSV_DELIMITER + "StartX" + Config.CSV_DELIMITER + "TunnelAmplitude" + Config.CSV_DELIMITER + "TunnelWidth" + Config.CSV_DELIMITER + "YDistanceToTop" + Config.CSV_DELIMITER + "YDistanceToBottom" + Config.CSV_DELIMITER + "Compensation" + "\n";
        this.#logList.forEach(element => {
            let lineString = "" + element[0] + Config.CSV_DELIMITER + element[1] + Config.CSV_DELIMITER + element[2] + Config.CSV_DELIMITER + element[3] + Config.CSV_DELIMITER + element[4] + Config.CSV_DELIMITER + element[5] + Config.CSV_DELIMITER + element[6] + Config.CSV_DELIMITER + element[7] + Config.CSV_DELIMITER + element[8] + Config.CSV_DELIMITER + element[9] + Config.CSV_DELIMITER + element[10] + "\n";
            csvString += lineString;
        });
        return csvString;
    }

    // This Method returns all Mouse Events since the last time this method was called as a csv-formatted String
    currLogsToCSV() {
        let csvString = "";
        this.#currLogs.forEach(element => {
            let lineString = "" + element[0] + Config.CSV_DELIMITER + element[1] + Config.CSV_DELIMITER + element[2] + Config.CSV_DELIMITER + element[3] + Config.CSV_DELIMITER + element[4] + Config.CSV_DELIMITER + element[5] + Config.CSV_DELIMITER + element[6] + Config.CSV_DELIMITER + element[7] + Config.CSV_DELIMITER + element[8] + Config.CSV_DELIMITER + element[9] + Config.CSV_DELIMITER + element[10] + "\n";
            csvString += lineString;
        });
        this.#currLogs = [];
        return csvString;
    }

    get csvHeader() {
        const csvString = "timestamp" + Config.CSV_DELIMITER + "active" + Config.CSV_DELIMITER +  "xPos" + Config.CSV_DELIMITER + "yPos" + Config.CSV_DELIMITER + "TargetX" + Config.CSV_DELIMITER + "StartX" + Config.CSV_DELIMITER + "TunnelAmplitude" + Config.CSV_DELIMITER + "TunnelWidth" + Config.CSV_DELIMITER + "YDistanceToTop" + Config.CSV_DELIMITER + "YDistanceToBottom" + Config.CSV_DELIMITER + "Compensation" + "\n";
        return csvString;
    }
}

export default MouseLogger;