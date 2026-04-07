/*
 * @name Star 2
 * @arialabel Grey background with 5-pointed star with white outline, rotating and following the mouse cursor.
 * @description The star() function creates a 5-point star polygon
 */

const star = [
  [0, -50],
  [14, -20],
  [47, -15],
  [23, 7],
  [29, 40],
  [0, 25],
  [-29, 40],
  [-23, 7],
  [-47, -15],
  [-14, -20],
  [0, -50],
];
function sketch2(p2) {
  p2.setup = function () {
    p2.createCanvas(640, 360, canvas2);
    p2.smooth();
    p2.stroke(255); // White outline
    p2.strokeWeight(2); // Line thickness of 2
  };

  p2.draw = function () {
    p2.background(51);
    // We can use translate to move the PShape
    p2.push();
    p2.translate(p2.mouseX, p2.mouseY); // Amount to displace objects within the window

    p2.drawShape(star); // Display the shape
    p2.pop();
  };

  p2.drawShape = function (star) {
    p2.beginShape();
    for (let i = 0; i < star.length - 1; i++) {
      //     line(mouseX + star[i][0], mouseY + star[i][1],
      //          mouseX + star[i+1][0], mouseY + star[i+1][1]);
      // Use translate instead
      p2.line(star[i][0], star[i][1], star[i + 1][0], star[i + 1][1]);
    }
    p2.endShape(p2.CLOSE);
  };
}

new p5(sketch2);
