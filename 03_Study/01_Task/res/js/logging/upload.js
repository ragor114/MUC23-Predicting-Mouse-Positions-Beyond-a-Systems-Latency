import Config from "../config.js";

const UPLOAD_SCRIPT = "save.php";

// This function starts a Request to upload the csv data to the server
async function uploadData(partId, mtCSVData, mouseCSVData) {
    // The partID is transformed in a simple way to make fraud on MTurk a little bit harder...
    let partIdS = "";
    for (let i = 0; i < Config.PARTICIPANT_ID_LENGTH; i++) {
        partIdS += "9";
    }

    let partId2 = parseInt(partIdS);
    partId2 = partId2 - partId;

    const url = UPLOAD_SCRIPT + "?partId=" + partId2;

    var formData = new FormData();
    formData.append("inpFile", mtCSVData);

    if(mouseCSVData) {
        formData.append("mouse", mouseCSVData);
    }

    fetch(url, {
        method: "POST",
        body: formData,
    })
    .then(response => {
        // console.log(response.text);
    })
    .then(body => {
        // console.log(body);
    });
}

export default uploadData;