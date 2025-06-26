/*
 * @name House2
 * @arialabel Black background with house with white outline, and following the mouse cursor.
 * @description The draw() function draws a house, with a man waving from window
 */
const house = [
  [50, 0],
  [50, -50],
  [60, -50],
  [0, -80],
  [-60, -50],
  [-50, -50],
  [-50, 0],
  [50, 0],
];
const door = [
  [10, 0],
  [10, -25],
  [-10, -25],
  [-10, 0],
  [10, 0],
];
const chimney = [
  [25, -75],
  [35, -75],
  [35, -62],
  [25, -67],
  [25, -75],
];
const window1 = [
  [40, -10],
  [40, -25],
  [20, -25],
  [20, -10],
  [40, -10],
];

function sketch4(p) {
  p.setup = function () {
    p.createCanvas(640, 360, canvas4); // Set the window size
    p.smooth(); // Draws all geometry with anti-aliased edges
  };

  p.draw = function () {
    p.push(); // begin drawing group
    p.background(0);
    p.translate(p.mouseX, p.mouseY); // Amount to displace objects within the window
    p.stroke(80, 170, 240);
    p.strokeWeight(2);

    p.drawShape(house);
    p.stroke(255, 0, 0);
    p.drawShape(door);
    p.stroke(80, 170, 240);
    p.drawShape(chimney);
    p.stroke(240, 255, 240);
    p.drawShape(window1);
    p.translate(-60, 0);
    p.drawShape(window1);
    p.translate(0, -20);
    p.drawShape(window1);
    p.translate(60, 0);
    p.drawShape(window1);
    p.text("🙋", 21, 7); // new
    p.pop();
  };

  p.drawShape = function (arr) {
    for (let i = 0; i < arr.length - 1; i++) {
      p.line(arr[i][0], arr[i][1], arr[i + 1][0], arr[i + 1][1]);
    }
  };
}

new p5(sketch4);
