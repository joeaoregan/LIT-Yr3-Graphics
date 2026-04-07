/**
 * Joe O'Regan
 * Modified processing code to implement bridge that moves with mouse cursor
 * Year 2
 * Graphics
 *
 * The Original version used:
 * Primitive PShape.
 * Using a PShape to display a custom polygon.
 *
 * This version uses points as PShape didn't agree to well with Processing.js the way I tried it
 */

const bridge_2 = [
  [0, 160],
  [227, 160],
  [227, 1],
  [246, 1],
  [246, 160],
  [464, 160],
  [464, 170],
  [246, 170],
  [246, 220],
  [227, 220],
  [227, 170],
  [0, 170],
]; // 12 points

const curveB1 = [
  [248, 158],
  [248, 16],
  [265, 46],
  [284, 68],
  [303, 89],
  [321, 106],
  [340, 121],
  [359, 133],
  [378, 142],
  [396, 149],
  [415, 155],
  [440, 158],
  [248, 158],
]; // 13 points

const curveB2 = [
  [0, 158],
  [225, 158],
  [225, 12],
  [207, 34],
  [188, 52],
  [169, 68],
  [151, 81],
  [132, 94],
  [113, 105],
  [94, 114],
  [76, 122],
  [57, 127],
  [38, 132],
  [19, 134],
  [0, 135],
  [0, 158],
]; // 16 points

const lines1 = [
  [265, 46, 265, 158],
  [284, 158, 284, 68],
  [303, 89, 303, 158],
  [321, 158, 321, 106],
  [340, 158, 340, 121],
  [359, 158, 359, 133],
  [378, 158, 378, 142],
  [396, 158, 396, 149],
]; // 8 lines

const lines2 = [
  [207, 158, 207, 34],
  [188, 158, 188, 52],
  [169, 158, 169, 68],
  [151, 158, 151, 81],
  [132, 158, 132, 94],
  [113, 158, 113, 105],
  [94, 158, 94, 114],
  [76, 158, 76, 122],
  [57, 158, 57, 127],
  [38, 158, 38, 132],
  [19, 158, 19, 134],
]; // 11 lines

function bridge2(p) {
  p.setup = function () {
    p.createCanvas(1000, 600, canvas6); // Set the window size
    p.smooth(); // Draws all geometry with anti-aliased edges
  };

  p.draw = function () {
    p.push(); // begin drawing group
    p.background(51);
    p.translate(p.mouseX, p.mouseY); // Amount to displace objects within the window
    p.stroke(0);
    p.strokeWeight(2);

    p.drawShape(bridge_2); // Draws shapes to the display bridge
    p.drawNegativeShape(bridge_2);
    p.stroke(255); // White outline
    p.drawShape(curveB1);
    p.drawNegativeShape(curveB1);
    p.drawShape(curveB2);
    p.drawNegativeShape(curveB2);

    p.strokeWeight(1);
    p.drawPositiveLine(lines1); // road to small curve right
    p.drawNegativeLine(lines1); // road to small curve left
    p.drawPositiveLine(lines2); // road to large curve right
    p.drawNegativeLine(lines2); // road to large curve left
    p.pop();
  };

  p.drawShape = function (arr) {
    for (let i = 0; i < arr.length - 1; i++) {
      p.line(arr[i][0], arr[i][1], arr[i + 1][0], arr[i + 1][1]);
    }
  };

  // Draw the shape on the negative side
  p.drawNegativeShape = function (arr) {
    for (let i = 0; i < arr.length - 1; i++) {
      p.line(arr[i][0] * -1, arr[i][1], arr[i + 1][0] * -1, arr[i + 1][1]);
    }
  };

  // Draw the vertical lines from road to curve
  p.drawPositiveLine = function (l) {
    for (let i = 0; i < l.length - 1; i++) {
      p.line(l[i][0], l[i][1], l[i][2], l[i][3]); // positive x coordinate
    }
  };

  p.drawNegativeLine = function (l) {
    for (let i = 0; i < l.length - 1; i++) {
      p.line(l[i][0] * -1, l[i][1], l[i][2] * -1, l[i][3]); // negative x coordinate
    }
  };
}

new p5(bridge2);
