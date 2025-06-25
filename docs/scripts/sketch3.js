/*
 * @name House
 * @arialabel Grey background with house with white outline, and following the mouse cursor.
 * @description The draw() function draws a house
 */

function sketch3(p3) {
  p3.setup = function () {
    p3.createCanvas(640, 360, canvas3); // Set the window size
    p3.smooth(); // Draws all geometry with anti-aliased edges
  };

  p3.drawHouse = function () {
    p3.beginShape(); // Create more complex forms
    p3.fill(102); // Grey colour
    p3.stroke(255); // White outline
    p3.strokeWeight(2); // Line thickness of 2
    p3.vertex(50, 0); // Specify vertex coordinates for points
    p3.vertex(50, -50);
    p3.vertex(60, -50);
    p3.vertex(0, -80);
    p3.vertex(-60, -50);
    p3.vertex(-50, -50);
    p3.vertex(-50, 0);
    p3.vertex(50, 0);
    p3.endShape(p3.CLOSE); // Write shape data to buffer
  };

  p3.drawDoor = function () {
    p3.beginShape(); // Create more complex forms
    p3.fill(255, 0, 0);
    p3.stroke(255);
    p3.strokeWeight(2);
    p3.vertex(10, 0);
    p3.vertex(10, -25);
    p3.vertex(-10, -25);
    p3.vertex(-10, 0);
    p3.endShape(p3.CLOSE); // Write shape data to buffer
  };

  p3.drawWindow = function () {
    p3.beginShape();
    p3.fill(240, 255, 240); // light blue
    p3.stroke(255);
    p3.strokeWeight(2);
    p3.vertex(40, -10);
    p3.vertex(40, -25);
    p3.vertex(20, -25);
    p3.vertex(20, -10);
    p3.vertex(40, -10);
    p3.endShape(p3.CLOSE); // Write shape data to buffer
  };

  p3.drawChimney = function (p) {
    p.beginShape();
    p.fill(102); // same as house
    p.stroke(255);
    p.strokeWeight(2);
    p.vertex(25, -75);
    p.vertex(35, -75);
    p.vertex(35, -62);
    p.vertex(25, -67);
    p.vertex(25, -75);
    p.endShape(p3.CLOSE); // Write shape data to buffer
  };

  p3.draw = function () {
    p3.background(51);

    p3.push();
    p3.translate(p3.mouseX, p3.mouseY); // Amount to displace objects within the window
    p3.drawHouse(); // Draws shapes to the display window
    p3.drawChimney(p3);
    p3.drawDoor();
    p3.drawWindow();
    p3.translate(-60, 0);
    p3.drawWindow();
    p3.translate(0, -20);
    p3.drawWindow();
    p3.translate(60, 0);
    p3.drawWindow();
    p3.pop();
  };
}

new p5(sketch3);
