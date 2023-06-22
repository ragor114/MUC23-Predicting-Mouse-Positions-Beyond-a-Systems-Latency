/*
    These functions return x- and y-Koordinates for the 4-corners of rectangles and narrowing/widening paths
    The four corners are positioned like this:
        pos1        pos2

        pos4        pos3
*/

function getRectangleCorners(x, y, length, height) {
    return {
        pos1: [x, y],
        pos2: [x + length, y],
        pos3: [x + length, y + height],
        pos4: [x, y + height],
    }
}

function getNarrowingCorners(x, y, length, height1, height2) {
    return {
        pos1: [x, y],
        pos2: [x + length, y + (height1 - height2)/2],
        pos3: [x + length, y + (height1 - height2)/2 + height2],
        pos4: [x, y + height1],
    }
}

export {getNarrowingCorners, getRectangleCorners};