import Config from "../config.js";

var model,
    modelType;

async function predict(listOfValues) { // call each frame
    if(Config.currentArchitecture == "Dense") {
        return await predictDense(listOfValues);
    }
    if(Config.currentArchitecture === "RNN") {
        return await predictRnn(listOfValues);
    }
    if(Config.currentArchitecture === "Transformer") {
        return await predictTransformer(listOfValues);
    }
    if(Config.currentArchitecture === "Optimized"){
        return await predictOptimized(listOfValues);
    }
    if(Config.currentArchitecture === "Ensemble") {
        return await predictEnsemble(listOfValues);
    }
}

function predictEnsemble(listOfValues) {
    let tens = tf.tidy(()  => {
        let asTensor = tf.tensor(listOfValues);
        return asTensor.reshape([-1, 9 * Config.samplesForOptimizedPrediction]);
    });

    let pred1 = Array.from(model[0].predict(tens, {
        batchSize: 1,
    }).dataSync());

    let pred2 = Array.from(model[1].predict(tens, {
        batchSize: 1,
    }).dataSync());

    
    let pred3 = Array.from(model[2].predict(tens, {
        batchSize: 1,
    }).dataSync());

    
    let pred4 = Array.from(model[3].predict(tens, {
        batchSize: 1,
    }).dataSync());

    console.log(pred4);

    let mean_pred = [0, 0];

    mean_pred[0] = (pred1[0] + pred2[0] + pred3[0] + pred4[0]) / 4;
    mean_pred[1] = (pred1[1] + pred2[1] + pred3[1] + pred4[1]) / 4;

    return mean_pred;
}

function predictOptimized(listOfValues) {
    let tens = tf.tidy(()  => {
        let asTensor = tf.tensor(listOfValues);
        return asTensor.reshape([-1, 9 * Config.samplesForOptimizedPrediction]);
    });
    

    //let tens = tf.tensor(listOfValues).reshape([-1, 9 * Config.samplesForDensePrediction]);

    // console.log(tens.dataSync());

    return Array.from(model.predict(tens, {
        batchSize: 1,
    }).dataSync()); // Maybe this works ...
}

function predictDense(listOfValues) {
    let tens = tf.tidy(()  => {
        let asTensor = tf.tensor(listOfValues);
        return asTensor.reshape([-1, 9 * Config.samplesForDensePrediction]);
    });
    

    //let tens = tf.tensor(listOfValues).reshape([-1, 9 * Config.samplesForDensePrediction]);

    // console.log(tens.dataSync());

    return Array.from(model.predict(tens, {
        batchSize: 1,
    }).dataSync()); // Maybe this works ...
}

async function predictRnn(listOfValues) {
    let tens = tf.tidy(()  => {
        let asTensor = tf.tensor(listOfValues);
        return asTensor.reshape([-1, asTensor.shape[0], asTensor.shape[1]]);
    });

    // console.log(tens.shape);
    // console.log(tens.dataSync());

    let preds = await model.executeAsync(tens);

    return Array.from(preds.dataSync());
}

function predictTransformer(listOfValues) {
    let tens = tf.tidy(()  => {
        let asTensor = tf.tensor(listOfValues);
        return asTensor.reshape([-1, asTensor.shape[0], asTensor.shape[1]]);
    });
    

    //let tens = tf.tensor(listOfValues).reshape([-1, 9 * Config.samplesForDensePrediction]);

    // console.log(tens.dataSync());

    return Array.from(model.predict(tens, {
        batchSize: 1,
    }).dataSync()); // Maybe this works ...
}

async function loadModel(modelName) { // call when page loaded
    if (modelName === "Dense-MAE") {
        model = await tf.loadGraphModel(Config.pathToDenseMae);
        // console.log(model);
    }

    if (modelName === "Dense-MSE") {
        model = await tf.loadGraphModel(Config.pathToDenseMse);
    }

    if(modelName === "Dense-NTS") {
        model = await tf.loadGraphModel(Config.pathToDenseNts);
    }

    if (modelName === "RNN-MAE") {
        model = await tf.loadGraphModel(Config.pathToRnnMae);
    }

    if (modelName === "RNN-MSE"){
        model = await tf.loadGraphModel(Config.pathToRnnMse);
    }

    if (modelName === "RNN-NTS") {
        model = await tf.loadGraphModel(Config.pathToRnnNts);
    }

    if (modelName === "Transformer-MAE") {
        model = await tf.loadGraphModel(Config.pathToTransformerMae);
    }

    if (modelName === "Transformer-MSE") {
        model = await tf.loadGraphModel(Config.pathToTransformerMse);
    }

    if (modelName === "Transformer-NTS") {
        model = await tf.loadGraphModel(Config.pathToTransformerNts);
    }

    if (modelName === "Optimized-MAE") {
        model = await tf.loadGraphModel(Config.pathToOptimized);
    }

    if(modelName === "Ensemble-MAE") {
        var curr;
        model = [];
        curr = await tf.loadGraphModel(Config.pathToEnsemble1);
        model.push(curr);
        curr = await tf.loadGraphModel(Config.pathToEnsemble2);
        model.push(curr);
        curr = await tf.loadGraphModel(Config.pathToEnsemble3);
        model.push(curr);
        curr = await tf.loadGraphModel(Config.pathToEnsemble4);
        model.push(curr);
    }

    modelType = modelName;
}

export {predict, loadModel};