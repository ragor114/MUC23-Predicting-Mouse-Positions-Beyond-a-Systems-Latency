import Config from "../config.js";
var data;

// This function checks if all fields in the form are filled. If so the information is saved in the data object.
function formFilledCompletely(form) {
    // console.log(form);
    if(form.age.value == "" || form.age.value === undefined || form.age.value === null) {
        //console.log("no age");
        return false;
    }

    let selectedGender = 'null';
    if(form.gender != undefined && form.gender != null) {
        for (let i = 0; i < form.gender.length; i++) {
            if(form.gender[i].checked) {
                if(i === 0) selectedGender = 'male';
                if(i === 1) selectedGender = 'female';
                if(i === 2) selectedGender = 'other';
                break;
            }
        }
    } else {
        //console.log("Gender not found");
        return false;
    }

    if(selectedGender == 'null') {
        //console.log("No gender");
        return false;
    }

    let selectedDevice = 'null';
    if(form.inputdevice != undefined && form.inputdevice != null) {
        for (let i = 0; i < form.inputdevice.length; i++) {
            if(form.inputdevice[i].checked) {
                if(i === 0) selectedDevice = 'mouse';
                if(i === 1) selectedDevice = 'touchpad';
                if(i === 2) selectedDevice = 'other';
                break;
            }
        }
    } else {
        // console.log("device not found");
        return false;
    }

    if(selectedDevice == 'null') {
        // console.log("No device");
        return false;
    }

    // console.log(form.os);
    let selectedOs = 'null';
    if(form.os != undefined && form.os != null) {
        for(let i = 0; i < form.os.length; i++) {
            if (form.os[i].checked) {
                if (i === 0) selectedOs = 'Windows 11';
                if (i === 1) selectedOs = 'Windows 10';
                if (i === 2) selectedOs = 'Windows 8';
                if (i === 3) selectedOs = 'Windows older';
                if (i === 4) selectedOs = 'MacOS';
                if (i === 5) selectedOs = 'Linux';
                if (i === 6) selectedOs = 'Mobile';
                if (i === 7) selectedOs = 'Other';
            }
        }
    } else {
        return false;
    }

    if(selectedOs === 'null') return false;


    if(form.resolution.value == "" || form.resolution.value === undefined || form.resolution.value === null) return false;
    if(form.screensize.value == "" || form.screensize.value === undefined || form.screensize.value === null) return false;
    if(form.refreshrate.value == "" || form.refreshrate.value === undefined || form.refreshrate.value === null) return false;

    data = {
        age: form.age.value,
        gender: selectedGender,
        inputDevice: selectedDevice,
        screenRes: form.resolution.value,
        screenSize: form.screensize.value,
        screenRate: form.refreshrate.value,
        OS: selectedOs,
    }

    // console.log(data);

    form.classList.add("hidden");
    let children = form.children;
    for (let i = 0; i < children.length; i++) {
        const element = children[i];
        element.classList.add("hidden");
    }

    return true;
}

function addRealRes(width, height) {
    if(data !== undefined) {
        const realRes = `${width} x ${height}px`;
        data.realRes = realRes;
    }
}

// This function returns all values from the demographic form in a CSV-formatted string form.
function getDemographicDataAsCSV() {
    let csvString = "Age" + Config.CSV_DELIMITER + "Gender" + Config.CSV_DELIMITER + "Inputdevice" + Config.CSV_DELIMITER + "Screen Resolution" + Config.CSV_DELIMITER + "Screen Size in inch" + Config.CSV_DELIMITER + "Screen Refresh Rate" + Config.CSV_DELIMITER + "OS" + Config.CSV_DELIMITER + "Real Res" + "\n";
    if(data !== null && data !== undefined) {
        csvString += data.age + Config.CSV_DELIMITER + data.gender + Config.CSV_DELIMITER + data.inputDevice + Config.CSV_DELIMITER + data.screenRes + Config.CSV_DELIMITER + data.screenSize + Config.CSV_DELIMITER + data.screenRate + Config.CSV_DELIMITER + data.OS + Config.CSV_DELIMITER + data.realRes;
    }
    return csvString;
}

export {formFilledCompletely, getDemographicDataAsCSV, addRealRes};