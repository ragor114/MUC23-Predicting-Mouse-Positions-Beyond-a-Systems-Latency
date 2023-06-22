import Config from "../config.js";
import Sample from "../mouse/sample.js";

class SampleManager {

    #samples;
    #canvas;
    #lastX;
    #lastY;
    #inverted;

    constructor(canvas) {
        this.#samples = [];
        this.#canvas = canvas;
        this.#lastX = 0;
        this.#lastY = 0;
        this.#inverted = false;
    }

    addSample(mouseX, mouseY, tInfo, active) {
        this.#samples.push(new Sample(mouseX, mouseY, tInfo, active, this.#canvas, this.#canvas.width, this.#canvas.height, this.#lastX, this.#lastY));
        this.#lastX = mouseX;
        this.#lastY = mouseY;
        // console.log(this.#samples[this.#samples.length-1]);
    }

    getSmapleListOfLengthN() {

        if(Config.currentArchitecture === "Dense") {
            return this.#get1DListOfLengthN(Config.samplesForDensePrediction);
        }

        if(Config.currentArchitecture === "RNN") {
            return this.#get1DListOfLengthN(Config.samplesForRNNPrediction);
        }

        if(Config.currentArchitecture === "Transformer") {
            return this.#get1DListOfLengthN(Config.samplesForTransformerPrediction);
        }

        if(Config.currentArchitecture === "Optimized" || Config.currentArchitecture === "Ensemble") {
            return this.#get1DListOfLengthN(Config.samplesForOptimizedPrediction);
        }
    }


    #get1DListOfLengthN(N) {
        let listOfLengthN = [],
            sumDistance = 0;

        if(this.#samples.length < N + Config.bufferLength) {
            // console.log("buffer not filled");
            let missingSamples = (N + Config.bufferLength) - this.#samples.length;
            // console.log(missingSamples);
            for(let i = 0; i < missingSamples; i++) {
                listOfLengthN.push(new Sample(0, 0, null, false, this.#canvas, this.#canvas.width, this.#canvas.height, this.#lastX, this.#lastY).normalizedValues);
                if (listOfLengthN.length == N) break;
            }
            
            for(let i = 0; i < this.#samples.length - Config.bufferLength; i++) {
                listOfLengthN.push(this.#samples[i].normalizedValues);
                sumDistance += this.#samples[i].xSpeed;
            }

            listOfLengthN = JSON.parse(JSON.stringify(listOfLengthN)); // Deep Copy Values
            listOfLengthN = this.#invertSpeeds(listOfLengthN, sumDistance);

            // console.log(listOfLengthN.length);

            return listOfLengthN;
        }

        //console.log("Data Buffer filled");
        for(let i = this.#samples.length - (N + Config.bufferLength); i < this.#samples.length - Config.bufferLength; i++) {
            // console.log(i);
            listOfLengthN.push(this.#samples[i].normalizedValues);
            // console.log(listOfLengthN);
            sumDistance += this.#samples[i].xSpeed;
        }

        listOfLengthN = JSON.parse(JSON.stringify(listOfLengthN)); // Deep Copy Values
        listOfLengthN = this.#invertSpeeds(listOfLengthN, sumDistance);

        // console.log(listOfLengthN[listOfLengthN.length-1]);
        // console.log(listOfLengthN.length);

        return listOfLengthN;
    } 

    #invertSpeeds(listOfSamples, sumDistance) {
        if (sumDistance >= 0){
            this.#inverted = false;
            return listOfSamples;
        }

        for(let i = 0; i < listOfSamples.length; i++) {
            listOfSamples[i][1] *= -1;
        }

        this.#inverted = true;

        return listOfSamples;
    }


    addDebugSamples() {
        var tInfo = {
            width: 1207,
            height: 57,
            x: 79.5,
        };
        this.#samples.push(new Sample(0, 0, tInfo, 0, this.#canvas, 2550, 1440, 0, 0));
        this.#samples.push(new Sample(0, 0, tInfo, 0, this.#canvas, 2550, 1440, 0, 0));
        this.#samples.push(new Sample(676, 593, tInfo, 0, this.#canvas, 2550, 1440, 0, 0));
        this.#samples.push(new Sample(767, 900, tInfo, 0, this.#canvas, 2550, 1440, 676, 593));
        this.#samples.push(new Sample(867, 100, tInfo, 0, this.#canvas, 2550, 1440, 676, 593));
        this.#samples.push(new Sample(967, 200, tInfo, 0, this.#canvas, 2550, 1440, 676, 593));
        this.#samples.push(new Sample(1176, 500, tInfo, 0, this.#canvas, 2550, 1440, 676, 593));
    }

    get hasInverted() {
        return this.#inverted;
    }

}


export default SampleManager;