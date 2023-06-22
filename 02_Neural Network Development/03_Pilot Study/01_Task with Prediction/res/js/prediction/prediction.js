import {predict} from './load_model.js';
import Config from '../config.js';

async function makePrediction(listOfSamples, isReversed, canvas) {
    let result = [0.005, 0.005];

    result = await predict(listOfSamples);
    // console.log(result);

    return transformBack(result, isReversed, canvas.width, canvas.height);
}

function transformBack(result, isReversed, screenXRes, screenYRes) {
    let backTransformed = JSON.parse(JSON.stringify(result));
    /*
    console.log("result:");
    console.log(backTransformed);
    console.log("ScreenX: " + screenXRes + " ScreenY: " + screenYRes);
    */

    if(isReversed) {
        backTransformed[0] = backTransformed[0] * -1;
    }

    backTransformed[0] *= screenXRes;
    backTransformed[1] *= screenYRes;

    // console.log(backTransformed);

    return backTransformed;
}

export default makePrediction;