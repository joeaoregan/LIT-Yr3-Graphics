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

const bridge_1 = [
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

const curve1 = [
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

const curve2 = [
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

function bridge1(p) {
  p.setup = function () {
    p.createCanvas(1000, 600, canvas5); // Set the window size
    p.smooth(); // Draws all geometry with anti-aliased edges
  };

  p.draw = function () {
    p.push(); // begin drawing group
    p.background(51);
    p.translate(p.mouseX, p.mouseY); // Amount to displace objects within the window
    p.stroke(0);
    p.strokeWeight(2);

    p.drawShape(bridge_1); // Draws shapes to the display bridge
    p.drawNegativeShape(bridge_1);
    p.stroke(255); // White outline
    p.drawShape(curve1);
    p.drawNegativeShape(curve1);
    p.drawShape(curve2);
    p.drawNegativeShape(curve2);

    p.strokeWeight(1);
    // Road to small curve right
    p.line(265, 46, 265, 158);
    p.line(284, 158, 284, 68);
    p.line(303, 89, 303, 158);
    p.line(321, 158, 321, 106);
    p.line(340, 158, 340, 121);
    p.line(359, 158, 359, 133);
    p.line(378, 158, 378, 142);
    p.line(396, 158, 396, 149);
    // road to large curve right
    p.line(207, 158, 207, 34);
    p.line(188, 158, 188, 52);
    p.line(169, 158, 169, 68);
    p.line(151, 158, 151, 81);
    p.line(132, 158, 132, 94);
    p.line(113, 158, 113, 105);
    p.line(94, 158, 94, 114);
    p.line(76, 158, 76, 122);
    p.line(57, 158, 57, 127);
    p.line(38, 158, 38, 132);
    p.line(19, 158, 19, 134);
    // Road to small curve left
    p.line(-265, 46, -265, 158);
    p.line(-284, 158, -284, 68);
    p.line(-303, 89, -303, 158);
    p.line(-321, 158, -321, 106);
    p.line(-340, 158, -340, 121);
    p.line(-359, 158, -359, 133);
    p.line(-378, 158, -378, 142);
    p.line(-396, 158, -396, 149);
    // road to large curve left
    p.line(-207, 158, -207, 34);
    p.line(-188, 158, -188, 52);
    p.line(-169, 158, -169, 68);
    p.line(-151, 158, -151, 81);
    p.line(-132, 158, -132, 94);
    p.line(-113, 158, -113, 105);
    p.line(-94, 158, -94, 114);
    p.line(-76, 158, -76, 122);
    p.line(-57, 158, -57, 127);
    p.line(-38, 158, -38, 132);
    p.line(-19, 158, -19, 134);

    p.translate(-p.mouseX, -p.mouseY);
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
}

new p5(bridge1);
