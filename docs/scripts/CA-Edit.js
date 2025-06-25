/*
 * Joe O'Regan
 * 25/06/2025
 * Convert Process to P5.js
 */

// Click and drag the mouse to view the scene from different angles.
let isLooping = true; // Loop is set to on, used to pause and unpause the scene
let zoom; // Zoom in and out of the scene using the mouse scroll wheel
let rotateX = 0.0;
let rotateY = 0.0; // Rotate X and Y axis
let fov = 1.25; // Field of view
// Loop counters for scaling up/down, translating in/out
let i = 2; // Make the letters B, I, and G scale
let j = 5; // and the letters F, O, T translate on X
let eyeX = 100.0;
let eyeY = -60.0;
let eyeZ = 240.0;
let centerX = 100.0;
let centerY = -50.0;
let centerZ = 0.0;
let aspect, cameraY, cameraZ;

const rd = [255, 0, 0];
const gr = [0, 255, 0];
const bl = [0, 0, 255];

const keyA = 65;
const keyS = 83;
const keyD = 68;
const keyW = 87;
const keyP = 80;
const keyX = 88;
const keyC = 67;
const keyT = 84;
const keyL = 76;
const keyB = 66;
const keyR = 82;
let isAxisLinesVisible = true;
let isCarVisible = true;
let isTextVisible = true;
let isWheelLineVisible = true;
let isBigFootVisible = true;

/** Monster Truck Points */
const truckBody1 = [
  [5.0, -22.0, 45.0, 1.0],
  [5.0, -30.0, 45.0, 1.0],
  [32.0, -30.0, 45.0, 1.0],
  [38.0, -38.0, 50.0, 1.0],
  [36.0, -40.0, 50.0, 1.0],
  [40.0, -40.0, 50.0, 1.0],
  [42.0, -38.0, 50.0, 1.0],
  [50.0, -38.0, 50.0, 1.0],
  [50.0, -37.0, 50.0, 1.0],
  [48.0, -37.0, 50.0, 1.0],
  [53.0, -30.0, 45.0, 1.0],
  [60.0, -30.0, 45.0, 1.0],
  [70.0, -27.0, 45.0, 1.0],
  [70.0, -23.0, 45.0, 1.0],
  [72.0, -22.0, 45.0, 1.0],
  [70.0, -20.0, 45.0, 1.0],
  [65.0, -22.0, 45.0, 1.0],
  [60.0, -24.0, 45.0, 1.0],
  [55.0, -22.0, 45.0, 1.0],
  [48.0, -18.0, 45.0, 1.0],
  [30.0, -18.0, 45.0, 1.0],
  [28.0, -24.0, 45.0, 1.0],
  [22.0, -25.0, 45.0, 1.0],
  [15.0, -24.0, 45.0, 1.0],
  [10.0, -20.0, 45.0, 1.0],
  [5.0, -22.0, 45.0, 1.0],
];
const truckBody2 = [
  [5.0, -22.0, 75.0, 1.0],
  [5.0, -30.0, 75.0, 1.0],
  [32.0, -30.0, 75.0, 1.0],
  [38.0, -38.0, 70.0, 1.0],
  [36.0, -40.0, 70.0, 1.0],
  [40.0, -40.0, 70.0, 1.0],
  [42.0, -38.0, 70.0, 1.0],
  [50.0, -38.0, 70.0, 1.0],
  [50.0, -37.0, 70.0, 1.0],
  [48.0, -37.0, 70.0, 1.0],
  [53.0, -30.0, 75.0, 1.0],
  [60.0, -30.0, 75.0, 1.0],
  [70.0, -27.0, 75.0, 1.0],
  [70.0, -23.0, 75.0, 1.0],
  [72.0, -22.0, 75.0, 1.0],
  [70.0, -20.0, 75.0, 1.0],
  [65.0, -22.0, 75.0, 1.0],
  [60.0, -24.0, 75.0, 1.0],
  [55.0, -22.0, 75.0, 1.0],
  [48.0, -18.0, 75.0, 1.0],
  [30.0, -18.0, 75.0, 1.0],
  [28.0, -24.0, 75.0, 1.0],
  [22.0, -25.0, 75.0, 1.0],
  [15.0, -24.0, 75.0, 1.0],
  [10.0, -20.0, 75.0, 1.0],
  [5.0, -22.0, 75.0, 1.0],
];
const chassis = [
  [20.0, -12.5, 55.0, 1.0],
  [60.0, -12.5, 55.0, 1.0],
  [60.0, -17.5, 55.0, 1.0],
  [20.0, -17.5, 55.0, 1.0],
  [20.0, -12.5, 55.0, 1.0],
];
const truckLights = [
  [5, -24, 74, 1.0],
  [5, -26, 74, 1.0],
  [5, -26, 68, 1.0],
  [5, -24, 68, 1.0],
  [5, -24, 74, 1.0],
];
const windscreen = [
  [48.0, -37.0, 50.0, 1.0],
  [53.0, -30.0, 46.0, 1.0],
  [53.0, -30.0, 74.0, 1.0],
  [48.0, -37.0, 70.0, 1.0],
  [48.0, -37.0, 50.0, 1.0],
];
const sideWindow1 = [
  [42.0, -37.0, 50.0, 1.0],
  [47.0, -37.0, 50.0, 1.0],
  [52.0, -30.0, 45.0, 1.0],
  [42.0, -30.0, 45.0, 1.0],
  [42.0, -37.0, 50.0, 1.0],
];
const sideWindow2 = [
  [42.0, -37.0, 70.0, 1.0],
  [47.0, -37.0, 70.0, 1.0],
  [52.0, -30.0, 75.0, 1.0],
  [42.0, -30.0, 75.0, 1.0],
  [42.0, -37.0, 70.0, 1.0],
];
const racingStripeYel = [
  [5.25, -28.0, 45.0, 1.0],
  [30.0, -28.0, 45.0, 1.0],
  [35.0, -24.0, 45.0, 1.0],
  [59.5, -24.0, 45.0, 1.0],
  [55.5, -22.6, 45.0, 1.0],
  [35.0, -22.6, 45.0, 1.0],
  [30.0, -25.6, 45.0, 1.0],
  [5.25, -25.6, 45.0, 1.0],
  [5.25, -28.0, 45.0, 1.0],
];
const racingStripeRed = [
  [5.25, -25.4, 45.0, 1.0],
  [30.0, -25.4, 45.0, 1.0],
  [35.0, -22.4, 45.0, 1.0],
  [55.5, -22.4, 45.0, 1.0],
  [52.5, -21.0, 45.0, 1.0],
  [35.0, -21.0, 45.0, 1.0],
  [30.0, -23.0, 45.0, 1.0],
  [28.5, -23.0, 45.0, 1.0],
  [13.5, -23.0, 45.0, 1.0],
  [5.25, -23.0, 45.0, 1.0],
  [5.25, -25.4, 45.0, 1.0],
];
const wheel = [
  [0.0, 0.0, 0.0, 1.0],
  [0.0, -10.0, -2.5, 1.0],
  [0.0, 10.0, -2.5, 1.0],
  [-10.0, 0.0, -2.5, 1.0],
  [10.0, 0.0, -2.5, 1.0],
]; // elipse ce

// Points for B
const arrB = [
  [0.0, -100.0, 0.0, 1.0],
  [0.0, -103.0, 0.0, 1.0],
  [1.0, -103.0, 0.0, 1.0],
  [1.0, -117.0, 0.0, 1.0],
  [0.0, -117.0, 0.0, 1.0],
  [0.0, -120.0, 0.0, 1.0],
  [12.0, -120.0, 0.0, 1.0],
  [15.0, -117.0, 0.0, 1.0],
  [15.0, -113.0, 0.0, 1.0],
  [12.0, -110.0, 0.0, 1.0],
  [15.0, -107.0, 0.0, 1.0],
  [15.0, -103.0, 0.0, 1.0],
  [12.0, -100.0, 0.0, 1.0],
  [0.0, -100.0, 0.0, 1.0],
]; // Add start point, to go full circle
const arrBhole1 = [
  [7.0, -103.0, 0.0, 1.0],
  [7.0, -108.0, 0.0, 1.0],
  [9.0, -108.0, 0.0, 1.0],
  [9.0, -103.0, 0.0, 1.0],
  [7.0, -103.0, 0.0, 1.0],
];
const arrBhole2 = [
  [7.0, -112.0, 0.0, 1.0],
  [7.0, -117.0, 0.0, 1.0],
  [9.0, -117.0, 0.0, 1.0],
  [9.0, -112.0, 0.0, 1.0],
  [7.0, -112.0, 0.0, 1.0],
];

// Points for I
const arrI = [
  [16.0, -100.0, 0.0, 1.0],
  [16.0, -103.0, 0.0, 1.0],
  [17.0, -103.0, 0.0, 1.0],
  [17.0, -117.0, 0.0, 1.0],
  [16.0, -117.0, 0.0, 1.0],
  [16.0, -120.0, 0.0, 1.0],
  [24.0, -120.0, 0.0, 1.0],
  [24.0, -117.0, 0.0, 1.0],
  [23.0, -117.0, 0.0, 1.0],
  [23.0, -103.0, 0.0, 1.0],
  [24.0, -103.0, 0.0, 1.0],
  [24.0, 0 - 100, 0.0, 1.0],
  [16.0, -100.0, 0.0, 1.0],
];
// Points for G
const arrG = [
  [28.0, -100.0, 0.0, 1.0],
  [25.0, -103.0, 0.0, 1.0],
  [25.0, -117.0, 0.0, 1.0],
  [28.0, -120.0, 0.0, 1.0],
  [39.0, -120.0, 0.0, 1.0],
  [39.0, -111.0, 0.0, 1.0],
  [33.0, -111.0, 0.0, 1.0],
  [33.0, -115.0, 0.0, 1.0],
  [31.0, -115.0, 0.0, 1.0],
  [31.0, -105.0, 0.0, 1.0],
  [33.0, -105.0, 0.0, 1.0],
  [33.0, -109.0, 0.0, 1.0],
  [40.0, -109.0, 0.0, 1.0],
  [40.0, -106.0, 0.0, 1.0],
  [39.0, -106.0, 0.0, 1.0],
  [39.0, -103.0, 0.0, 1.0],
  [36.0, -100.0, 0.0, 1.0],
  [28.0, -100.0, 0.0, 1.0],
];
// Points for F
const arrF = [
  [40.0, -100.0, 0.0, 1.0],
  [40.0, -103.0, 0.0, 1.0],
  [41.0, -103.0, 0.0, 1.0],
  [41.0, -117.0, 0.0, 1.0],
  [40.0, -117.0, 0.0, 1.0],
  [40.0, -120.0, 0.0, 1.0],
  [54.0, -120.0, 0.0, 1.0],
  [54.0, -116.0, 0.0, 1.0],
  [50.0, -116.0, 0.0, 1.0],
  [50.0, -115.0, 0.0, 1.0],
  [47.0, -115.0, 0.0, 1.0],
  [47.0, -112.0, 0.0, 1.0],
  [50.0, -112.0, 0.0, 1.0],
  [50.0, -108.0, 0.0, 1.0],
  [47.0, -108.0, 0.0, 1.0],
  [47.0, -103.0, 0.0, 1.0],
  [48.0, -103.0, 0.0, 1.0],
  [48.0, -100.0, 0.0, 1.0],
  [40.0, -100.0, 0.0, 1.0],
];
// Points for O
const arrO = [
  [58.0, -100.0, 0.0, 1.0],
  [55.0, -103.0, 0.0, 1.0],
  [55.0, -117.0, 0.0, 1.0],
  [58.0, -120.0, 0.0, 1.0],
  [66.0, -120.0, 0.0, 1.0],
  [69.0, -117.0, 0.0, 1.0],
  [69.0, -103.0, 0.0, 1.0],
  [66.0, -100.0, 0.0, 1.0],
  [58.0, -100.0, 0.0, 1.0],
];
const arrOhole = [
  [61.0, -105.0, 0.0, 1.0],
  [61.0, -115.0, 0.0, 1.0],
  [63.0, -115.0, 0.0, 1.0],
  [63.0, -105.0, 0.0, 1.0],
  [61.0, -105.0, 0.0, 1.0],
];
// Points for T
const arrT = [
  [87.0, -100.0, 0.0, 1.0],
  [87.0, -103.0, 0.0, 1.0],
  [88.0, -103.0, 0.0, 1.0],
  [88.0, -117.0, 0.0, 1.0],
  [83.0, -117.0, 0.0, 1.0],
  [83.0, -120.0, 0.0, 1.0],
  [98.0, -120.0, 0.0, 1.0],
  [98.0, -117.0, 0.0, 1.0],
  [94.0, -117.0, 0.0, 1.0],
  [94.0, -103.0, 0.0, 1.0],
  [95.0, -103.0, 0.0, 1.0],
  [95.0, 0 - 100, 0.0, 1.0],
  [87.0, -100.0, 0.0, 1.0],
];

// Car body - Right side (Driver side)
const carBody = [
  [0.0, 0.0, 8.0, 1.0],
  [0.0, -3.0, 8.0, 1.0],
  [0.0, -4.0, 10.0, 1.0],
  [0.0, -11.0, 10.0, 1.0],
  [0.0, -13.0, 17.0, 1.0],
  [0.0, -19.0, 28.0, 1.0],
  [0.0, -20.0, 42.0, 1.0],
  [0.0, -12.0, 50.0, 1.0],
  [0.0, -8.0, 68.0, 1.0],
  [0.0, -4.0, 68.0, 1.0],
  [0.0, -3.0, 70.0, 1.0],
  [0.0, 0.0, 70.0, 1.0],
  [0.0, 0.0, 64.0, 1.0],
  [0.0, -5.0, 61.0, 1.0],
  [0.0, -5.0, 53.0, 1.0],
  [0.0, 0.0, 50.0, 1.0],
  [0.0, 0.0, 32.0, 1.0],
  [0.0, -5.0, 29.0, 1.0],
  [0.0, -5.0, 21.0, 1.0],
  [0.0, 0.0, 17.0, 1.0],
  [0.0, 0.0, 8.0, 1.0],
];
// Lights
const carLightFront = [
  [1.0, -5.0, 68.0, 1.0],
  [1.0, -7.0, 68.0, 1.0],
  [6.0, -7.0, 68.0, 1.0],
  [6.0, -5.0, 68.0, 1.0],
  [1.0, -5.0, 68.0, 1.0],
];
const carLightBack = [
  [1.0, -5.0, 10.0, 1.0],
  [1.0, -10.0, 10.0, 1.0],
  [4.0, -10.0, 10.0, 1.0],
  [4.0, -5.0, 10.0, 1.0],
  [1.0, -5.0, 10.0, 1.0],
];
// Windscreens
const carFrontWindow = [
  [1.0, -12.0, 50.0, 1.0],
  [1.0, -19.0, 42.0, 1.0],
  [29.0, -19.25, 42.0, 1.0],
  [29.0, -12.0, 50.0, 1.0],
  [1.0, -12.0, 50.0, 1.0],
];
const carBackWindow = [
  [1.0, -13.0, 17.0, 1.0],
  [1.0, -19.0, 28.0, 1.0],
  [29.0, -19.25, 28.0, 1.0],
  [29.0, -13.0, 17.0, 1.0],
  [1.0, -13.0, 17.0, 1.0],
];
const carSideWindowBack = [
  [0.0, -13.0, 18.0, 1.0],
  [0.0, -19.0, 29.0, 1.0],
  [0.0, -19.25, 34.0, 1.0],
  [0.0, -13.0, 34.0, 1.0],
  [0.0, -13.0, 18.0, 1.0],
];
const carSideWindowFront = [
  [0.0, -13.0, 36.0, 1.0],
  [0.0, -19.5, 36.0, 1.0],
  [0.0, -19.75, 41.0, 1.0],
  [0.0, -13.0, 49.0, 1.0],
  [0.0, -13.0, 36.0, 1.0],
];

// transform matrix
//2D matrices defined by columns, 1st col 2nd col 3rd col 4th col
const scalingMatrixDown = [
  [0.75, 0.0, 0.0, 0.0],
  [0.0, 0.75, 0.0, 0.0],
  [0.0, 0.0, 0.75, 0.0],
  [0.0, 0.0, 0.0, 1.0],
]; // scale by 3/4
const scalingMatrixUp = [
  [1.333, 0.0, 0.0, 0.0],
  [0.0, 1.333, 0.0, 0.0],
  [0.0, 0.0, 1.333, 0.0],
  [0.0, 0.0, 0.0, 1.0],
]; // scale by 4/3
const translateInMatrix = [
  [1.0, 0.0, 0.0, 0.0],
  [0.0, 1.0, 0.0, 0.0],
  [0.0, 0.0, 1.0, 0.0],
  [-12, 0, 0, 1.0],
]; // translate by distance of -30
const translateOutMatrix = [
  [1.0, 0.0, 0.0, 0.0],
  [0.0, 1.0, 0.0, 0.0],
  [0.0, 0.0, 1.0, 0.0],
  [12, 0, 0, 1.0],
]; // translate by distance of -30

let theta;
let rotZMatrix;
let scaleIt;
let move;
let rotateWheel;

function transform_point(m, p) {
  let p_new = [0.0, 0.0, 0.0, 0.0]; // handle 4 elements as its 3D calc

  p_new[0] = m[0][0] * p[0] + m[1][0] * p[1] + m[2][0] * p[2] + m[3][0] * p[3];
  p_new[1] = m[0][1] * p[0] + m[1][1] * p[1] + m[2][1] * p[2] + m[3][1] * p[3];
  p_new[2] = m[0][2] * p[0] + m[1][2] * p[1] + m[2][2] * p[2] + m[3][2] * p[3];
  p_new[3] = m[0][3] * p[0] + m[1][3] * p[1] + m[2][3] * p[2] + m[3][3] * p[3];

  return p_new;
}
function applyTransform() {
  transformAnArray(arrB, scaleIt); // B Scale
  transformAnArray(arrBhole1, scaleIt);
  transformAnArray(arrBhole2, scaleIt);
  transformAnArray(arrI, scaleIt); // I Scale
  transformAnArray(arrG, scaleIt); // G Scale
  transformAnArray(arrF, move); // Move F left and right
  transformAnArray(arrO, move); // Move O left and right
  transformAnArray(arrOhole, move);
  transformAnArray(arrT, move); // Move T left and right
  transformAnArray(wheel, rotateWheel); // Rotate The 4 Wheels
}
function transformAnArray(array, transform) {
  for (let i = 0; i < array.length; i++) {
    array[i] = transform_point(transform, array[i]);
  }
}

function setup() {
  createCanvas(720, 400, WEBGL, canvasMain);

  theta = radians(10);

  rotZMatrix = [
    [cos(theta), sin(theta), 0.0, 0.0],
    [-sin(theta), cos(theta), 0.0, 0.0],
    [0.0, 0.0, 1.0, 0.0],
    [0.0, 0.0, 0.0, 1.0],
  ]; // roatate around z axis
  // camera(50.0, -80.0, 240.0, 50.0, -70.0, 0.0, 0.0, 1.0, 0.0);
  // camera(50.0, 50.0, -100.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);

  smooth();
  frameRate(8);
  // shape = buildGeometry(createScene);
}

function draw() {
  fill(255);
  background(200); // Background colour black

  aspect = width / height;
  cameraY = height / 2.0;
  cameraZ = cameraY / tan(fov / 2.0);

  //translate(375, 450, 500);

  perspective(fov, aspect, cameraZ / 10.0, cameraZ * 10.0); // Set the camera starting position
  orbitControl(); // Enable orbiting with the mouse.
  // lights(); // Turn on the lights.

  translate(-50, 0, 0);
  drawAxes(); // draw X, Y, Z axes

  translate(100, 0, 0);

  drawMonsterTruck(bl);

  translate(85, 0, 20);
  drawCar(bl); // Draw Blue Car
  translate(35, 0, 0);
  drawCar(rd); // Draw Red Car
  translate(35, 0, 0);
  drawCar(gr); // Draw Green Car

  translate(-100, 40, 0); // Lower the writing
  drawLetter(arrB, 13, 10.0); // Draw The Letter 'B'
  drawLetter(arrBhole1, 4, 10.0);
  drawLetter(arrBhole2, 4, 10.0);
  drawLetter(arrI, 12, 10.0); // Draw The Letter 'I'
  drawLetter(arrG, 17, 10.0); // Draw The Letter 'G'
  drawLetter(arrF, 18, 10.0); // Draw The Letter 'F'
  drawLetter(arrO, 8, 10.0); // Draw The Letter 'O'
  drawLetter(arrOhole, 4, 10.0);
  translate(15, 0, 0); // Translate On X axis
  drawLetter(arrO, 8, 10.0); // Draw A Second Letter 'O'
  drawLetter(arrOhole, 4, 10.0);
  translate(-15, 0, 0); // Undo Translate On X axis
  drawLetter(arrT, 12, 10.0); // Draw The Letter 'T'
  translate(0, -40, 0); // Undo original translation on Y axis

  rotateWheel = rotZMatrix; // Rotate the monster truck wheels
  MoveAndScaleText(); // Scale and move text 5 times each way
  // drawMonsterTruck(bl);
  MoveCamera(); // Move the camera if Arrow keys or ASDW keys are pressed
  ResetCamera(); // Reset the camera if the right mouse button is pressed
}

function MoveCamera() {
  if (keyPressed) {
    if (keyIsDown(UP_ARROW) || keyIsDown(keyW)) centerY -= 10;
    else if (keyIsDown(DOWN_ARROW) || keyIsDown(keyS)) centerY += 10;
    else if (keyIsDown(LEFT_ARROW) || keyIsDown(keyA)) centerX -= 10;
    else if (keyIsDown(RIGHT_ARROW) || keyIsDown(keyD)) centerX += 10;
  }
}

function ResetCamera() {
  camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, 0.0, 1.0, 0.0);
  if ((mouseIsPressed && mouseButton == RIGHT) || keyIsDown(ESCAPE)) {
    zoom -= zoom; // Reset zoom
    rotateX -= rotateX; // Reset X axis
    rotateY -= rotateY; // Reset Y axis
    perspective(1, aspect, cameraZ / 10.0, cameraZ * 10.0); // Reset the perspective
    eyeX = 90.0; // Reset the camera
    eyeY = -60.0;
    eyeZ = 240.0;
    centerX = 100.0;
    centerY = -50.0;
    centerZ = 0.0;
    fov = 1.25; // Reset the field of view
  }
}

function MoveAndScaleText() {
  if (i <= 5) {
    scaleIt = scalingMatrixDown;
    move = translateInMatrix;
    applyTransform();
    i++;
    if (i == 5) j = 0;
  }

  if (j <= 5) {
    scaleIt = scalingMatrixUp;
    move = translateOutMatrix;
    applyTransform();
    j++;
    if (j == 5) i = 0;
  }
}

function keyPressed() {
  if ((key == " " || keyIsDown(keyP)) && isLooping == true) {
    isLooping = false; // Set the pause flag
    noLoop(); // Stop looping if paused
  } else {
    isLooping = true;
    loop(); // Loop if unpaused
  }

  if (keyIsDown(keyX)) {
    isAxisLinesVisible = !isAxisLinesVisible;
  }

  if (keyIsDown(keyC)) {
    isCarVisible = !isCarVisible; // toggle car visibility
  }

  if (keyIsDown(keyT)) {
    isTextVisible = !isTextVisible; // toggle text visibility
  }

  if (keyIsDown(keyL)) {
    isWheelLineVisible = !isWheelLineVisible; // toggle wheel line visibility
  }

  if (keyIsDown(keyB)) {
    isBigFootVisible = !isBigFootVisible; // toggle Big Foot visibility
  }

  if (keyIsDown(keyR)) {
    isAxisLinesVisible = true;
    isCarVisible = true;
    isTextVisible = true;
    isWheelLineVisible = true;
    isBigFootVisible = true;
  }
}

function drawCar(colour) {
  if (isCarVisible) {
    stroke(colour);
    drawDoubleOnX(carBody, 30.0, true); // Draw The Car Body Outline
    stroke(0, 255, 255); // Draw The Windows Light Blue
    drawDoubleOnX(carSideWindowFront, 30.0, false); // Draw The Front Side Windows
    drawDoubleOnX(carSideWindowBack, 30.0, false); // Draw The Back Side Windows
    drawOnce(carFrontWindow); // Draw The Front Windscreen
    drawOnce(carBackWindow); // Draw The Back Windscreen
    stroke(255, 255, 0); // Draw The Lights Yellow
    drawDoubleOnX(carLightFront, 23.0, false); // Draw The Front Lights, Duplicating On X Axis
    drawDoubleOnX(carLightBack, 25.0, false); // Draw The Back Lights, Duplicating On X Axis
  }
}

function drawOnce(array) {
  for (let i = 0; i < array.length - 1; i++) {
    line(
      array[i][0],
      array[i][1],
      array[i][2],
      array[i + 1][0],
      array[i + 1][1],
      array[i + 1][2]
    ); // Draw the shape
  }
}

function drawTruckShape(array, array2, connect) {
  for (let i = 0; i < array.length - 1; i++) {
    line(
      array[i][0],
      array[i][1],
      array[i][2],
      array[i + 1][0],
      array[i + 1][1],
      array[i + 1][2]
    ); // Near side
    if (connect)
      line(
        array[i][0],
        array[i][1],
        array[i][2],
        array2[i][0],
        array2[i][1],
        array2[i][2]
      ); // Connecting lines
    line(
      array2[i][0],
      array2[i][1],
      array2[i][2],
      array2[i + 1][0],
      array2[i + 1][1],
      array2[i + 1][2]
    ); // Far side
  }
}

function drawLetter(array, offset) {
  if (isTextVisible) {
    strokeWeight(2);
    for (let i = 0; i < array.length - 1; i++) {
      stroke(0, 0, 255); // Blue: front and back
      line(
        array[i][0],
        array[i][1],
        array[i][2],
        array[i + 1][0],
        array[i + 1][1],
        array[i + 1][2]
      ); // Draw Letter Back outline
      line(
        array[i][0],
        array[i][1],
        array[i][2] + offset,
        array[i + 1][0],
        array[i + 1][1],
        array[i + 1][2] + offset
      ); // Draw Letter Front outline
      stroke(50, 50, 255); // Light blue: sides
      line(
        array[i][0],
        array[i][1],
        array[i][2],
        array[i][0],
        array[i][1],
        array[i][2] + offset
      ); // Draw Letter Sides
    }
  }
}

function drawDoubleOnZ(array, offset, connect) {
  if (connect) {
    for (let i = 0; i < array.length - 1; i++) {
      line(
        array[i][0],
        array[i][1],
        array[i][2],
        array[i + 1][0],
        array[i + 1][1],
        array[i + 1][2]
      ); // Near side
      line(
        array[i][0],
        array[i][1],
        array[i][2],
        array[i][0],
        array[i][1],
        array[i][2] + offset
      ); // Connecting lines
      line(
        array[i][0],
        array[i][1],
        array[i][2] + offset,
        array[i + 1][0],
        array[i + 1][1],
        array[i + 1][2] + offset
      ); // Far side
    }
  } else {
    for (let i = 0; i < array.length - 1; i++) {
      line(
        array[i][0],
        array[i][1],
        array[i][2],
        array[i + 1][0],
        array[i + 1][1],
        array[i + 1][2]
      ); // Near side
    }
    for (let i = 0; i < array.length - 1; i++) {
      line(
        array[i][0],
        array[i][1],
        array[i][2] + offset,
        array[i + 1][0],
        array[i + 1][1],
        array[i + 1][2] + offset
      ); // Far side
    }
  }
}

function drawDoubleOnX(array, offset, connect) {
  for (let i = 0; i < array.length - 1; i++) {
    line(
      array[i][0],
      array[i][1],
      array[i][2],
      array[i + 1][0],
      array[i + 1][1],
      array[i + 1][2]
    ); // Near side
    line(
      array[i][0] + offset,
      array[i][1],
      array[i][2],
      array[i + 1][0] + offset,
      array[i + 1][1],
      array[i + 1][2]
    ); // Far side
    if (connect == true)
      line(
        array[i][0],
        array[i][1],
        array[i][2],
        array[i][0] + offset,
        array[i][1],
        array[i][2]
      ); // Connecting lines
  }
}

function drawMonsterTruck(colour) {
  if (isBigFootVisible) {
    // push();
    strokeWeight(2);
    stroke(colour);
    drawTruckShape(truckBody1, truckBody2, true);

    stroke("yellow");
    drawDoubleOnZ(racingStripeYel, 30.0, false);
    stroke("red");
    drawDoubleOnZ(racingStripeRed, 30.0, false);

    strokeWeight(1);
    stroke(50);
    drawDoubleOnZ(chassis, 4, 10.0, true);

    drawLights();
    drawWindows();

    translate(20, -10, 40);
    drawWheel(25, 10, 10);
    translate(0, 0, 40);
    drawWheel(25, 10, 10);
    translate(40, 0, 0);
    drawWheel(25, 10, 10);
    translate(0, 0, -40);
    drawWheel(25, 10, 10);
    translate(0, 0, 20);
    drawWheel(20, 2, 30); // Axel 1
    translate(-40, 0, 0);
    drawWheel(20, 2, 30);
    // pop();
    translate(-20, 10, -60); // reset Big Foot translate
  }
}

function drawLights() {
  stroke(255, 255, 0); // Yellow
  drawDoubleOnX(truckLights, 65, false);
  translate(0, 0, -22); // translate
  drawDoubleOnX(truckLights, 65, false);
  translate(0, 0, 22); // reset translate
}

function drawWindows() {
  strokeWeight(2);
  stroke(0, 255, 255); // blue
  drawOnce(windscreen); // Draw the windscreen
  drawTruckShape(sideWindow2, sideWindow1, false);
}

function drawWheel(sides, r, h) {
  stroke(25, 25, 25);
  strokeWeight(1);
  fill(0);
  let angle = 360 / sides;
  let halfHeight = h / 2;
  beginShape();

  for (let i = 0; i < sides + 1; i++) {
    let x = cos(radians(i * angle)) * r;
    let y = sin(radians(i * angle)) * r;
    vertex(x + wheel[0][0], y + wheel[0][1], wheel[0][2] - halfHeight);
    line(
      wheel[0][0],
      wheel[0][1],
      wheel[0][2] - halfHeight,
      x + wheel[0][0],
      y + wheel[0][1],
      wheel[0][2] - halfHeight
    ); // centre to point on curve, add half the height to z
  }

  endShape(CLOSE);

  beginShape();
  for (let i = 0; i <= sides; i++) {
    let x = cos(radians(i * angle)) * r;
    let y = sin(radians(i * angle)) * r;
    vertex(x + wheel[0][0], y + wheel[0][1], wheel[0][2] + halfHeight);
    line(
      wheel[0][0],
      wheel[0][1],
      wheel[0][2] - halfHeight,
      x + wheel[0][0],
      y + wheel[0][1],
      wheel[0][2] - halfHeight
    ); // centre to point on curve, add half the height to z
    line(
      wheel[0][0],
      wheel[0][1],
      wheel[0][2] + halfHeight,
      x + wheel[0][0],
      y + wheel[0][1],
      wheel[0][2] + halfHeight
    );
  }
  endShape(CLOSE);

  beginShape(TRIANGLE_STRIP);
  for (let i = 0; i <= sides + 1; i++) {
    let x = cos(radians(i * angle)) * r;
    let y = sin(radians(i * angle)) * r;
    vertex(x + wheel[0][0], y + wheel[0][1], wheel[0][2] + halfHeight); // OK
    vertex(x + wheel[0][0], y + wheel[0][1], wheel[0][2] - halfHeight); // OK
    stroke(25, 25, 25); // dark grey tyres
  }

  endShape(CLOSE);

  // red crosses on wheels to show spinning
  if (isWheelLineVisible) {
    strokeWeight(1);
    stroke(255, 0, 0);

    if (r >= 10) {
      translate(0, 0, 8);
      line(
        wheel[1][0],
        wheel[1][1],
        wheel[1][2],
        wheel[2][0],
        wheel[2][1],
        wheel[2][2]
      );
      line(
        wheel[3][0],
        wheel[3][1],
        wheel[3][2],
        wheel[4][0],
        wheel[4][1],
        wheel[4][2]
      );
      translate(0, 0, -8);
    }
  }
}

function drawAxes() {
  if (isAxisLinesVisible) {
    strokeWeight(5);
    stroke(255, 0, 0);
    line(-50, 0, 0, 50, 0, 0); // Red X axis
    stroke(0, 255, 0);
    line(0, -50, 0, 0, 50, 0); // Green Y axis
    stroke(0, 0, 255);
    line(0, 0, -50, 0, 0, 50); // Blue Z axis
  }
  strokeWeight(1);
}
