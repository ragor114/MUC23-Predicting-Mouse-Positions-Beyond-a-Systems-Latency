/* eslint-disable indent */
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
    logMousePosition: true,
    // Number of digits of the participant IDs
    PARTICIPANT_ID_LENGTH: 8,
    // Should participants be able to gop from left to right and from right to left?
    allowRightToLeft: true,
    // enable calibration rectangle
    calbrationMode: false,
};

export default Config;
