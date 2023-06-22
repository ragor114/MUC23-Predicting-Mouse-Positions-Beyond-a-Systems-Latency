/* eslint-disable indent */
var models = ["Dense-MAE", "Dense-MSE", "Dense-NTS", "RNN-MAE", "RNN-MSE", "RNN-NTS", "Transformer-MAE", "Transformer-MSE", "Transformer-NTS", "Optimized-MAE", "Ensemble-MAE"],
    curr = models[10]; // Optimized 9 - Transformer 6 - Dense 0, 1, 2; Ensemble - 10

// The Config File allows easy customization of relevant parameters
const Config = {
    // How many frames per second do you want to show?
    FPS: 60,
    // How often should each combination of width and height appear?
    REPEATS: 5, // 5!
    // How large should the mouse cursor be?
    MOUSERADIUS: 4,
    // How long should the timeout between finishing or failing a task and the restart be?
    RESTART_TIMEOUT_IN_SECONDS: 0.5,
    // How long should it take for the first tunnel to appear after start is pressed.
    INITIAL_TIMEOUT_IN_SECONDS: 1,
    // With which symbol should csv-columns be seperated? (For Excel use ;)
    // eslint-disable-next-line quotes
    CSV_DELIMITER: ";",
    // Place you desired targetWidths in this array.
    targetWidths: [23, 34, 45, 57, 68, 79, 90, 102],
    // Place your desired targetLengths / amplitudes in this array.
    targetLengths: [302, 603, 905, 1207],
    // Do you want to record the position of the mouse?
    logMousePosition: false,

    usePredicitions: true,

    samplesForPredicition: 7,

    samplesForDensePrediction: 5,

    samplesForOptimizedPrediction: 6,

    samplesForRNNPrediction: 7,

    samplesForTransformerPrediction: 13,
    // Number of digits of the participant IDs
    PARTICIPANT_ID_LENGTH: 8,
    // Should participants be able to gop from left to right and from right to left?
    allowRightToLeft: true,
    // enable calibration rectangle
    calbrationMode: false,

    currentModel: curr,
                        // Dense, RNN, Transformer
    currentArchitecture: curr.split("-")[0],

    pathToDenseMae: "./res/model/ff_mae/model.json",
    pathToDenseMse: "./res/model/ff_mse/model.json",
    pathToDenseNts: "./res/model/ff_nts/model.json",
    pathToRnnMae: "./res/model/rnn_mae/model.json",
    pathToRnnMse: "./res/model/rnn_mse/model.json",
    pathToRnnNts: "./res/model/rnn_nts/model.json",
    pathToTransformerMae: "./res/model/transformer_mae/model.json",
    pathToTransformerMse: "./res/model/transformer_mse/model.json",
    pathToTransformerNts: "./res/model/transformer_nts/model.json",
    pathToOptimized: "./res/model/ff_optimized/model.json",
    pathToEnsemble1: "./res/model/ensemble/ff_1/model.json",
    pathToEnsemble2: "./res/model/ensemble/ff_2/model.json",
    pathToEnsemble3: "./res/model/ensemble/ff_3/model.json",
    pathToEnsemble4: "./res/model/ensemble/ff_4/model.json",
};

export default Config;
