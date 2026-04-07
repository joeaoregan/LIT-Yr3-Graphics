/*
 * @name Star
 * @arialabel Grey background with 5-pointed star with white outline, rotating and following the mouse cursor.
 * @description The star() function creates a 5-point star polygon
 */
function sketch1(p1) {
  p1.setup = function () {
    p1.createCanvas(640, 360, canvas1);
    p1.smooth();
  };

  p1.star = function () {
    p1.beginShape();
    p1.fill(102);
    p1.stroke(255);
    p1.strokeWeight(2);
    p1.vertex(0, -50);
    p1.vertex(14, -20);
    p1.vertex(47, -15);
    p1.vertex(23, 7);
    p1.vertex(29, 40);
    p1.vertex(0, 25);
    p1.vertex(-29, 40);
    p1.vertex(-23, 7);
    p1.vertex(-47, -15);
    p1.vertex(-14, -20);
    p1.endShape(p1.CLOSE);
  };

  p1.draw = function () {
    p1.background(51);
    p1.push();
    p1.translate(p1.mouseX, p1.mouseY);
    p1.rotate(p1.frameCount / -100.0);
    p1.star();
    p1.pop();
  };
}

new p5(sketch1);
