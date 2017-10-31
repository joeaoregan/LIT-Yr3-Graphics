Boolean loop = true;       // Loop is set to on, used to pause and unpause the scene
float zoom;                // Zoom in and out of the scene using the mouse scroll wheel
float rotateX = 0.0;       // Rotate the X axis
float rotateY = 0.0;       // Rotate the Y axis
float fov = 1.25;          // Field of view
float newMouseX;           // Store the mouseX coordinate
float newMouseY;           // Store the mouseY coordinate
// Loop counters for scaling up/down, translating in/out
int i = 2;                 // Make the letters B, I, and G scale
int j = 5;                 // and the letters F, O, T translate on X

float eyeX = 100.0;        // Default Start Camera Values
float eyeY = -60.0;         
float eyeZ = 240.0;
float centerX = 100.0;
float centerY = -50.0;
float centerZ = 0.0;

/** Monster Truck Points */
// Chassis
float[][] chassis1 = {{20.0,-12.5,55.0,1.0},{60.0,-12.5,55.0,1.0},{60.0,-17.5,55.0,1.0},{20.0,-17.5,55.0,1.0},{20.0,-12.5,55.0,1.0}};

// Body - These ones are near the axis
float[][] truckBody = {{5.0,-22.0,45.0,1.0},{5.0,-30.0,45.0,1.0},{32.0,-30.0,45.0,1.0},{38.0,-38.0,50.0,1.0},{36.0,-40.0,50.0,1.0},
                      {40.0,-40.0,50.0,1.0},{42.0,-38.0,50.0,1.0},{50.0,-38.0,50.0,1.0},{50.0,-37.0,50.0,1.0},{48.0,-37.0,50.0,1.0},
                      {53.0,-30.0,45.0,1.0},{60.0,-30.0,45.0,1.0},{70.0,-27.0,45.0,1.0},{70.0,-23.0,45.0,1.0},{72.0,-22.0,45.0,1.0},
                      {70.0,-20.0,45.0,1.0},{65.0,-22.0,45.0,1.0},{60.0,-24.0,45.0,1.0},{55.0,-22.0,45.0,1.0},{48.0,-18.0,45.0,1.0},
                      {30.0,-18.0,45.0,1.0},{28.0,-24.0,45.0,1.0},{22.0,-25.0,45.0,1.0},{15.0,-24.0,45.0,1.0},{10.0,-20.0,45.0,1.0},{5.0,-22.0,45.0,1.0}};
float[][] truckBody2 = {{5.0,-22.0,75.0,1.0},{5.0,-30.0,75.0,1.0},{32.0,-30.0,75.0,1.0},{38.0,-38.0,70.0,1.0},{36.0,-40.0,70.0,1.0},
                        {40.0,-40.0,70.0,1.0},{42.0,-38.0,70.0,1.0},{50.0,-38.0,70.0,1.0},{50.0,-37.0,70.0,1.0},{48.0,-37.0,70.0,1.0},
                        {53.0,-30.0,75.0,1.0},{60.0,-30.0,75.0,1.0},{70.0,-27.0,75.0,1.0},{70.0,-23.0,75.0,1.0},{72.0,-22.0,75.0,1.0},
                        {70.0,-20.0,75.0,1.0},{65.0,-22.0,75.0,1.0},{60.0,-24.0,75.0,1.0},{55.0,-22.0,75.0,1.0},{48.0,-18.0,75.0,1.0},
                        {30.0,-18.0,75.0,1.0},{28.0,-24.0,75.0,1.0},{22.0,-25.0,75.0,1.0},{15.0,-24.0,75.0,1.0},{10.0,-20.0,75.0,1.0},{5.0,-22.0,75.0,1.0}};
                        
float[][] lights = {{5, -24, 74,1.0},{5, -26, 74,1.0},{5, -26, 68,1.0},{5, -24, 68,1.0},{5, -24, 74,1.0}};

float[][] windscreen = {{48.0,-37.0,50.0,1.0},{53.0,-30.0,46.0,1.0},{53.0,-30.0,74.0,1.0},{48.0,-37.0,70.0,1.0},{48.0,-37.0,50.0,1.0}};
float[][] sideWindow1 = {{42.0, -37.0, 50.0, 1.0},{47.0, -37.0, 50.0, 1.0},{52.0, -30.0, 45.0, 1.0},{42.0, -30.0, 45.0, 1.0},{42.0, -37.0, 50.0, 1.0}};
float[][] sideWindow2 = {{42.0, -37.0, 70.0, 1.0},{47.0, -37.0, 70.0, 1.0},{52.0, -30.0, 75.0, 1.0},{42.0, -30.0, 75.0, 1.0},{42.0, -37.0, 70.0, 1.0}};
/*
// light
float[] l1 = {70, -24, 74,1.0};
float[] l2 = {70, -26, 74,1.0};
float[] l3 = {70, -26, 68,1.0};
float[] l4 = {70, -24, 68,1.0};
// Windows
float[] wi1 = {48.0,-37.0,50.0,1.0}; // top right
float[] wi2 = {53.0,-30.0,46.0,1.0}; // bottom right
float[] wi3 = {53.0,-30.0,74.0,1.0}; // bottom left
float[] wi4 = {48.0,-37.0,70.0,1.0}; 
// Side Window left
float[] sw1 = {42.0, -37.0, 50.0, 1.0};
float[] sw2 = {47.0, -37.0, 50.0, 1.0};
float[] sw3 = {52.0, -30.0, 45.0, 1.0};
float[] sw4 = {42.0, -30.0, 45.0, 1.0};
// Side Window left
float[] sw5 = {42.0, -37.0, 70.0, 1.0};
float[] sw6 = {47.0, -37.0, 70.0, 1.0};
float[] sw7 = {52.0, -30.0, 75.0, 1.0};
float[] sw8 = {42.0, -30.0, 75.0, 1.0};
*/

float[][] racingStripeYel = {{5.25, -28.0, 45.0, 1.0},{30.0, -28.0, 45.0, 1.0},{35.0, -24.0, 45.0, 1.0},{59.5, -24.0, 45.0, 1.0},{55.5, -22.6, 45.0, 1.0},
                            {35.0, -22.6, 45.0, 1.0},{30.0, -25.6, 45.0, 1.0},{5.25, -25.6, 45.0, 1.0},{5.25, -28.0, 45.0, 1.0}};
float[][] racingStripeRed = {{5.25, -25.4, 45.0, 1.0},{30.0, -25.4, 45.0, 1.0},{35.0, -22.4, 45.0, 1.0},{55.5, -22.4, 45.0, 1.0}, {52.5, -21.0, 45.0, 1.0},
                            {35.0, -21.0, 45.0, 1.0},{30.0, -23.0, 45.0, 1.0},{28.5, -23.0, 45.0, 1.0},{13.5, -23.0, 45.0, 1.0},{5.25, -23.0, 45.0, 1.0},{5.25, -25.4, 45.0, 1.0}};

// Wheel
float[] w1 = {0.0, 0.0, 0.0, 1.0};      // Wheel (Ellipse) Center  // radius point ellipse 1
float[] w2 = {0.0, -10.0, -2.5, 1.0};   // start line
float[] w3 = {0.0, 10.0, -2.5, 1.0};    // end line
float[] w4 = {-10.0, 0.0, -2.5, 1.0};   // Triangle shape point
float[] w5 = {10.0, 0.0, -2.5, 1.0};    // Triangle shape point

// Points for B
float[][] arrB = {{0.0,-100.0,0.0,1.0},{0.0,-103.0,0.0,1.0},{1.0,-103.0,0.0,1.0},{1.0,-117.0,0.0,1.0},{0.0,-117.0,0.0,1.0},
                {0.0,-120.0,0.0,1.0},{12.0,-120.0,0.0,1.0},{15.0,-117.0,0.0,1.0},{15.0,-113.0,0.0,1.0},
                {12.0,-110.0,0.0,1.0},{15.0,-107.0,0.0,1.0},{15.0,-103.0,0.0,1.0},{12.0,-100.0,0.0,1.0},
                {0.0,-100.0,0.0,1.0}};                                                                                  // Add start point, to go full circle
float[][] arrBhole1 = {{7.0,-103.0,0.0,1.0},{7.0,-108.0,0.0,1.0},{9.0,-108.0,0.0,1.0},{9.0,-103.0,0.0,1.0},{7.0,-103.0,0.0,1.0}};
float[][] arrBhole2 = {{7.0,-112.0,0.0,1.0},{7.0,-117.0,0.0,1.0},{9.0,-117.0,0.0,1.0},{9.0,-112.0,0.0,1.0},{7.0,-112.0,0.0,1.0}};


// Points for I
float[][] arrI = {{16.0,-100.0,0.0,1.0},{16.0,-103.0,0.0,1.0},{17.0,-103.0,0.0,1.0},{17.0,-117.0,0.0,1.0},
                {16.0,-117.0,0.0,1.0},{16.0,-120.0,0.0,1.0},{24.0,-120.0,0.0,1.0},{24.0,-117.0,0.0,1.0},
                {23.0,-117.0,0.0,1.0},{23.0,-103.0,0.0,1.0},{24.0,-103.0,0.0,1.0},{24.0,0.-100,0.0,1.0},{16.0,-100.0,0.0,1.0}};

// Points for G

float[][] arrG = {{28.0,-100.0,0.0,1.0},{25.0,-103.0,0.0,1.0},{25.0,-117.0,0.0,1.0},{28.0,-120.0,0.0,1.0},{39.0,-120.0,0.0,1.0},
                {39.0,-111.0,0.0,1.0},{33.0,-111.0,0.0,1.0},{33.0,-115.0,0.0,1.0},{31.0,-115.0,0.0,1.0},{31.0,-105.0,0.0,1.0},
                {33.0,-105.0,0.0,1.0},{33.0,-109.0,0.0,1.0},{40.0,-109.0,0.0,1.0},{40.0,-106.0,0.0,1.0},{39.0,-106.0,0.0,1.0},
                {39.0,-103.0,0.0,1.0},{36.0,-100.0,0.0,1.0},{28.0,-100.0,0.0,1.0}};

// Points for F
float[][] arrF = {{40.0,-100.0,0.0,1.0},{40.0,-103.0,0.0,1.0},{41.0,-103.0,0.0,1.0},{41.0,-117.0,0.0,1.0},{40.0,-117.0,0.0,1.0},
                {40.0,-120.0,0.0,1.0},{54.0,-120.0,0.0,1.0},{54.0,-116.0,0.0,1.0},{50.0,-116.0,0.0,1.0},{50.0,-115.0,0.0,1.0},
                {47.0,-115.0,0.0,1.0},{47.0,-112.0,0.0,1.0},{50.0,-112.0,0.0,1.0},{50.0,-108.0,0.0,1.0},{47.0,-108.0,0.0,1.0},
                {47.0,-103.0,0.0,1.0},{48.0,-103.0,0.0,1.0},{48.0,-100.0,0.0,1.0},{40.0,-100.0,0.0,1.0}};

// Points for O
float[][] arrO = {{58.0,-100.0,0.0,1.0},{55.0,-103.0,0.0,1.0},{55.0,-117.0,0.0,1.0},{58.0,-120.0,0.0,1.0},{66.0,-120.0,0.0,1.0},
                {69.0,-117.0,0.0,1.0},{69.0,-103.0,0.0,1.0},{66.0,-100.0,0.0,1.0},{58.0,-100.0,0.0,1.0}};
float[][] arrOhole = {{61.0,-105.0,0.0,1.0},{61.0,-115.0,0.0,1.0},{63.0,-115.0,0.0,1.0},{63.0,-105.0,0.0,1.0},{61.0,-105.0,0.0,1.0}};

// Points for T
float[][] arrT = {{87.0,-100.0,0.0,1.0},{87.0,-103.0,0.0,1.0},{88.0,-103.0,0.0,1.0},{88.0,-117.0,0.0,1.0},{83.0,-117.0,0.0,1.0},
                {83.0,-120.0,0.0,1.0},{98.0,-120.0,0.0,1.0},{98.0,-117.0,0.0,1.0},{94.0,-117.0,0.0,1.0},{94.0,-103.0,0.0,1.0},
                {95.0,-103.0,0.0,1.0},{95.0,0.-100,0.0,1.0},{87.0,-100.0,0.0,1.0}};

// Car body - Right side (Driver side)

float[][] arrCar = {{0.0,0.0,8.0,1.0},{0.0,-3.0,8.0,1.0},{0.0,-4.0,10.0,1.0},{0.0,-11.0,10.0,1.0},{0.0,-13.0,17.0,1.0},
                    {0.0,-19.0,28.0,1.0},{0.0,-20.0,42.0,1.0},{0.0,-12.0,50.0,1.0},{0.0,-8.0,68.0,1.0},{0.0,-4.0,68.0,1.0},
                    {0.0,-3.0,70.0,1.0},{0.0,0.0,70.0,1.0},{0.0,0.0,64.0,1.0},{0.0,-5.0,61.0,1.0},{0.0,-5.0,53.0,1.0},
                    {0.0,0.0,50.0,1.0},{0.0,0.0,32.0,1.0},{0.0,-5.0,29.0,1.0},{0.0,-5.0,21.0,1.0},{0.0,0.0,17.0,1.0},{0.0,0.0,8.0,1.0}};

// Lights
float[][] arrCarLightsFront = {{1.0,-5.0,68.0,1.0},{1.0,-7.0,68.0,1.0},{6.0,-7.0,68.0,1.0},{6.0,-5.0,68.0,1.0},{1.0,-5.0,68.0,1.0}};
float[][] arrCarLightsBack = {{1.0,-5.0,10.0,1.0},{1.0,-10.0,10.0,1.0},{4.0,-10.0,10.0,1.0},{4.0,-5.0,10.0,1.0},{1.0,-5.0,10.0,1.0}};

// Windscreens
float[][] arrFrontWindow = {{1.0,-12.0,50.0,1.0},{1.0,-19.0,42.0,1.0},{29.0,-19.25,42.0,1.0},{29.0,-12.0,50.0,1.0},{1.0,-12.0,50.0,1.0}};
float[][] arrBackWindow = {{1.0,-13.0,17.0,1.0},{1.0,-19.0,28.0,1.0},{29.0,-19.25,28.0,1.0},{29.0,-13.0,17.0,1.0},{1.0,-13.0,17.0,1.0}};

float[][] arrSideWindowBack = {{0.0,-13.0,18.0,1.0},{0.0,-19.0,29.0,1.0},{0.0,-19.25,34.0,1.0},{0.0,-13.0,34.0,1.0},{0.0,-13.0,18.0,1.0}};
float[][] arrSideWindowFront = {{0.0,-13.0,36.0,1.0},{0.0,-19.5,36.0,1.0},{0.0,-19.75,41.0,1.0},{0.0,-13.0,49.0,1.0},{0.0,-13.0,36.0,1.0}};

// transform matrix            
//2D matrices defined by columns, 1st col 2nd col 3rd col 4th col
float[][] scalingMatrixDown = {{0.75,0.0,0.0,0.0},{0.0,0.75,0.0,0.0},{0.0,0.0,0.75,0.0},{0.0,0.0,0.0,1.0}};      // scale by 3/4
float[][] scalingMatrixUp = {{1.333,0.0,0.0,0.0},{0.0,1.333,0.0,0.0},{0.0,0.0,1.333,0.0},{0.0,0.0,0.0,1.0}};     // scale by 4/3
float[][] translateInMatrix = {{1.0,0.0,0.0,0.0},{0.0,1.0,0.0,0.0},{0.0,0.0,1.0,0.0},{-12,0,0,1.0}};             // translate by distance of -30
float[][] translateOutMatrix = {{1.0,0.0,0.0,0.0},{0.0,1.0,0.0,0.0},{0.0,0.0,1.0,0.0},{12,0,0,1.0}};             // translate by distance of -30

float theta = radians(10); // convert degrees to radians
  
float[][] rotZMatrix= {{cos(theta),sin(theta),0.0,0.0},{-sin(theta),cos(theta),0.0,0.0},{0.0,0.0,1.0,0.0},{0.0,0.0,0.0,1.0}}; // roatate around z axis

float[][] scale;  // Used to Scale B, I, G.
float[][] move;  // Used to Translate F, O, O, T.
float[][] rotate;  // Used to Rotate wheel

float[] transform_point(float[][] m, float[] p){

   float[] p_new = {0.0,0.0,0.0,0.0}; // handle 4 elements as its 3D calc
   
   p_new[0] = m[0][0] * p[0] + m[1][0] * p[1] + m[2][0] * p[2] + m[3][0]*p[3];
   p_new[1] = m[0][1] * p[0] + m[1][1] * p[1] + m[2][1] * p[2]+ m[3][1]*p[3];
   p_new[2] = m[0][2] * p[0] + m[1][2] * p[1] + m[2][2] * p[2] +m[3][2]*p[3]; 
   p_new[3] = m[0][3] * p[0] + m[1][3] * p[1] + m[2][3] * p[2] +m[3][3]*p[3]; 
  
   return p_new;
}

/* Transforms are applied to 3 separate objects in the scene, The word "BIG"
   is scaled up and down. The word "FOOT" is translated left and right and 
   the wheel spinners on the wheels of the monster truck are rotated on the 
   Z axis
*/
void applyTransform(){  
  
  transformAnArray(arrB, scale, 14);     // B Scale
  transformAnArray(arrBhole1, scale, 5);
  transformAnArray(arrBhole2, scale, 5);
  transformAnArray(arrI, scale, 13);     // I Scale
  transformAnArray(arrG, scale, 18);     // G Scale 
  transformAnArray(arrF, move, 19);      // Move F left and right  
  transformAnArray(arrO, move, 9);       // Move O left and right
  transformAnArray(arrOhole, move, 5);
  transformAnArray(arrT, move, 13);      // Move T left and right
  
  // Wheels
  w1 = transform_point(rotate, w1);
  w2 = transform_point(rotate, w2);
  w3 = transform_point(rotate, w3);
  w4 = transform_point(rotate, w4);  
  w5 = transform_point(rotate, w5);
}

void transformAnArray(float[][] array, float[][] transform, int arraySize){
  for (int i = 0; i < arraySize; i++){
     array[i] = transform_point(transform, array[i]);
  }
}

void setup() {
  size(900, 900, P3D);
  //camera(50.0, -80.0, 240.0, 50.0, -70.0, 0.0, 0.0, 1.0, 0.0); // front left angle
  smooth();
  loop();
  frameRate(5);  
}
float cameraY;
void draw() {
  fill(255);  
  background(0);    // Sets background colour
  
  float aspect = float(width)/float(height);
  cameraY = height/2.0;
  //float fov = mouseY/float(height) * PI/2;
  float cameraZ = cameraY / tan(fov / 2.0);
  
  if (mousePressed && mouseButton == LEFT){  
    //fov = (mouseY)/float(height) * PI/2;
    if(mouseX - newMouseX != 0)
      rotateY = PI/3 + (newMouseX - mouseX)/float(height) * PI;
    //if(mouseY - newMouseY != 0)
    //  perspective(fov, aspect, cameraZ/10.0, cameraZ*10.0);
    if(mouseY - newMouseY != 0)
      rotateX = (newMouseY - mouseY)/float(height)*360 * (PI/180);
  }
  
  // Rotate the objects
  //rotateX(degrees * (PI/180));
  perspective(fov, aspect, cameraZ/10.0, cameraZ*10.0);
  rotateX(rotateX);
  rotateY(rotateY);
  
  strokeWeight(5);
  drawAxes();  
  strokeWeight(1);
  translate(85,0,20);
  drawCar();
  translate(35,0,0);
  stroke(255,0,0);
  drawCar();
  translate(35,0,0);
  stroke(0,255,0);
  drawCar();
  translate(-155,0,-20);
   
  /* Writing */
  strokeWeight(2);
  translate(0,40,0);               // Lower the writing
  
  drawLetter(arrB, 13, 10.0f);     // Draw The Letter 'B'
  drawLetter(arrBhole1, 4, 10.0f);
  drawLetter(arrBhole2, 4, 10.0f);
  drawLetter(arrI, 12, 10.0f);     // Draw The Letter 'I'
  drawLetter(arrG, 17, 10.0f);     // Draw The Letter 'G'
  drawLetter(arrF, 18, 10.0f);     // Draw The Letter 'F'
  drawLetter(arrO, 8, 10.0f);      // Draw The Letter 'O'
  drawLetter(arrOhole, 4, 10.0f);
  translate(15,0,0);
  drawLetter(arrO, 8, 10.0f);      // Draw The Letter 'O'
  drawLetter(arrOhole, 4, 10.0f);
  translate(-15,0,0);
  drawLetter(arrT, 12, 10.0f);     // Draw The Letter 'T'
  translate(0,-40,0);
  
  /* Monster Truck */
  rotate = rotZMatrix;
  
  // Scale down / translate in
  if(i <= 5) {
    scale=scalingMatrixDown;
    move=translateInMatrix;
    applyTransform();
    i++;
    if(i == 5) j = 0;
  }
  
  // Scale up / translate out
  if(j <= 5) {
    scale=scalingMatrixUp;
    move=translateOutMatrix;
    applyTransform();
    j++;
    if(j == 5) i = 0;
  }
  
  stroke(0,255,0);
  strokeWeight(1);
  drawTruckShape(truckBody, truckBody2, 25, true);  // Draw the truck body with connecting lines
  
  drawMonsterTruck();
  stroke(50) ; // Grey
  drawTruck(chassis1, 4, 10.0f, true); // Draw the chassis with connecting lines
  
  drawLights();
  translate(0,0,-22);  // translate
  //drawLights();
  //translate(-65,0,0);
  //drawLights();
  //translate(0,0,22);
  drawLights();
 // translate(65,0,0);
 
  translate(0,0,22);  // reset translate
  drawWindows();
  
  translate(20,-10,40);
  drawWheel(25,10,10);
  translate(0,0,40);
  drawWheel(25, 10, 10);
  translate(40,0,0);
  drawWheel(25, 10, 10);
  translate(0,0,-40);
  drawWheel(25, 10, 10);
  translate(0,0,20);
  drawWheel(20, 2, 30);   // Axel 1
  translate(-40,0,0);
  drawWheel(20, 2, 30);
  //translate(-20,-30,-40);  // Translate back
  
  // Move Camera Position
  if (keyPressed) {
     if ((key == CODED && keyCode == UP) || key == 'w' || key == 'W'){
       centerY -= 10;
     } else if ((key == CODED && keyCode == DOWN) || key == 's' || key == 'S'){
       centerY += 10;
     } else if ((key == CODED && keyCode == LEFT) || key == 'a' || key == 'A'){
       centerX -= 10;
     } else if ((key == CODED && keyCode == RIGHT) || key == 'd' || key == 'D'){
       centerX += 10;
     }
  }
  
  //if (mousePressed && (mouseButton == LEFT)) {
    //eyeX += (mouseX - newMouseX) / 10;
    //yeY += (mouseY - newMouseY) / 10;
    //println("eyeX " + eyeX);
  //}

  // Reset the camera position
  camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, 0.0, 1.0, 0.0);
  // Reset scene
  if (mousePressed && (mouseButton == RIGHT)) {
    zoom -= zoom;                                                    // Reset zoom
    rotateX -= rotateX;                                              // Reset X axis
    rotateY -= rotateY;                                              // Reset Y axis
    perspective(1, aspect, cameraZ/10.0, cameraZ*10.0);              // Reset the perspective
    eyeX = 90.0;                                                     // Reset the camera
    eyeY = -60.0;  
    eyeZ = 240.0;
    centerX = 100.0;
    centerY = -50.0;
    centerZ = 0.0;
    fov = 1.25;                                                      // Reset the field of view
  }
}


/* Pause/Unpause the scene by pressing the space bar*/
void keyPressed(){
  if ((key == ' ' && loop == true)){   // If the spacebar is pressed and looping
    loop=false;                        // Set the pause flag
    println("Pause");                  // Test pause working
    noLoop();                          // Stop looping if paused
  }  else {                            // If the spacebar is pressed and not looping
    loop=true;
    println("Unpause");                // Test pause working
    loop();                            // Loop if unpaused
  }
}

/* When a mouse button is pressed, store the value of the x and y coordinates from when the button is
   first pressed. These coordinates are used so that the car moves from the point it is currently at
   and doesn't change position when moving the axes around with the left mouse button
*/
void mousePressed(MouseEvent event){
  newMouseX = mouseX;                                   // Store the mouse X coord for camera movement
  newMouseY = mouseY;
  //println(newMouseX + ", " + newMouseY + " " + fov);  // Test the coords
}

/* The mouse wheel is used to zoom in and out, by changing the field of view values */
void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  //degrees += (5 * e);
  //println(degrees); 
  zoom += .002;
  
  //fov = degrees/height  * PI/2 *e ;
  fov += zoom * e;
  println(fov);   
}   

/* Draw the lines for the letters, The letters B, I, G, F, O, and T are drawn to the 
   screen and, the word BIG is scaled up and down, and the word FOOT is translated 
   left to right
*/
void drawLetter(float[][] array, int size, float offset){
  for (int i = 0; i < size; i++) {                                                                            // Size 1 less than the number of array elements as using i+1 to draw to the next point
      stroke(0, 0, 255);                                                                                      // Blue: front and back                                                                
      line(array[i][0],array[i][1],array[i][2], array[i+1][0],array[i+1][1],array[i+1][2]);                   // Draw Letter Back outline
      line(array[i][0],array[i][1],array[i][2] + offset, array[i+1][0],array[i+1][1],array[i+1][2] + offset); // Draw Letter Front outline
      stroke(50, 50, 255);                                                                                    // Light blue: sides
      line(array[i][0],array[i][1],array[i][2], array[i][0],array[i][1],array[i][2] + offset);                // Draw Letter Sides  
  }
}

// Draw Truck
void drawTruck (float[][] array, int size, float offset, boolean connect) {  // Underside of monster truck, connects axels  
  for (int i = 0; i < size; i++){
      line(array[i][0],array[i][1],array[i][2], array[i+1][0],array[i+1][1],array[i+1][2]);                          // Near side
      line(array[i][0],array[i][1],array[i][2] + offset, array[i+1][0],array[i+1][1],array[i+1][2] + offset);        // Far side
      if (connect == true) line(array[i][0],array[i][1],array[i][2], array[i][0],array[i][1],array[i][2] + offset);  // Connecting lines 
  }
}

// Draw a wrecked car
void drawCar(){  // offset x
  draw3DX(arrCar,20,30.0f,true);             // Draw The Car Body Outline
  // Windows
  stroke(0, 255, 255);
  draw3DX(arrSideWindowFront,4,30.0f,false); // Draw The Front Side Windows
  draw3DX(arrSideWindowBack,4,30.0f,false);  // Draw The Back Side Windows
  drawOnce(arrFrontWindow, 4);               // Draw The Front Windscreen
  drawOnce(arrBackWindow, 4);                // Draw The Back Windscreen
    
  for (int i = 0; i < 4; i++) {    
    // Lights
    stroke(255, 255, 0);                                                                                 // Size 1 less than the number of array elements as using i+1 to draw to the next point
    line(arrCarLightsFront[i][0],arrCarLightsFront[i][1],arrCarLightsFront[i][2], arrCarLightsFront[i+1][0],arrCarLightsFront[i+1][1],arrCarLightsFront[i+1][2]);                      // Draw Front Light Outline
    line(arrCarLightsFront[i][0] + 23.0f,arrCarLightsFront[i][1],arrCarLightsFront[i][2], arrCarLightsFront[i+1][0] + 23.0f,arrCarLightsFront[i+1][1],arrCarLightsFront[i+1][2]);      // Draw Front Light Outline
    line(arrCarLightsBack[i][0],arrCarLightsBack[i][1],arrCarLightsBack[i][2], arrCarLightsBack[i+1][0],arrCarLightsBack[i+1][1],arrCarLightsBack[i+1][2]);                            // Draw Back Light Outline
    line(arrCarLightsBack[i][0] + 25.0f,arrCarLightsBack[i][1],arrCarLightsBack[i][2], arrCarLightsBack[i+1][0] + 25.0f,arrCarLightsBack[i+1][1],arrCarLightsBack[i+1][2]);            // Draw Back Light Outline
    // Windows
    //stroke(0, 255, 255);
    //line(arrFrontWindow[i][0],arrFrontWindow[i][1],arrFrontWindow[i][2], arrFrontWindow[i+1][0],arrFrontWindow[i+1][1],arrFrontWindow[i+1][2]);                                        // Draw Front Windscreen Outline
    //line(arrBackWindow[i][0],arrBackWindow[i][1],arrBackWindow[i][2], arrBackWindow[i+1][0],arrBackWindow[i+1][1],arrBackWindow[i+1][2]);                                              // Draw Back Windscreen Outline
    //line(arrSideWindowFront[i][0],arrSideWindowFront[i][1],arrSideWindowFront[i][2], arrSideWindowFront[i+1][0],arrSideWindowFront[i+1][1],arrSideWindowFront[i+1][2]);                // Draw Front Side Window Outline
    //line(arrSideWindowFront[i][0] + 30.0f,arrSideWindowFront[i][1],arrSideWindowFront[i][2], arrSideWindowFront[i+1][0] + 30.0f,arrSideWindowFront[i+1][1],arrSideWindowFront[i+1][2]);// Draw Front Side Window Outline
    //line(arrSideWindowBack[i][0],arrSideWindowBack[i][1],arrSideWindowBack[i][2], arrSideWindowBack[i+1][0],arrSideWindowBack[i+1][1],arrSideWindowBack[i+1][2]);                      // Draw Back Side Window Outline
    //line(arrSideWindowBack[i][0] + 30.0f,arrSideWindowBack[i][1],arrSideWindowBack[i][2], arrSideWindowBack[i+1][0] + 30.0f,arrSideWindowBack[i+1][1],arrSideWindowBack[i+1][2]);      // Draw Back Side Window Outline
  }
}

void drawOnce(float[][] array, int size){
  for (int i = 0; i < size; i++){
      line(array[i][0],array[i][1],array[i][2], array[i+1][0],array[i+1][1],array[i+1][2]);                          // Near side
  }
}

void drawTruckShape(float[][] array, float[][] array2, int size, boolean connect){
  for (int i = 0; i < size; i++){
      line(array[i][0],array[i][1],array[i][2], array[i+1][0],array[i+1][1],array[i+1][2]);                          // Near side      
      line(array2[i][0],array2[i][1],array2[i][2], array2[i+1][0],array2[i+1][1],array2[i+1][2]);                    // Far side      
      if (connect) line(array[i][0],array[i][1],array[i][2], array2[i][0],array2[i][1],array2[i][2]);                // Connecting lines       
  }
}

void draw3DX(float[][] array, int size, float offset, boolean connect){
  for (int i = 0; i < size; i++){
      line(array[i][0],array[i][1],array[i][2], array[i+1][0],array[i+1][1],array[i+1][2]);                          // Near side
      line(array[i][0] + offset,array[i][1],array[i][2], array[i+1][0] + offset,array[i+1][1],array[i+1][2]);        // Far side
      if (connect == true) line(array[i][0],array[i][1],array[i][2], array[i][0] + offset,array[i][1],array[i][2]);  // Connecting lines 
  }
}
void draw3DZ(float[][] array, int size, float offset, boolean connect){
  for (int i = 0; i < size; i++){
      line(array[i][0],array[i][1],array[i][2], array[i+1][0],array[i+1][1],array[i+1][2]);                          // Near side
      line(array[i][0],array[i][1],array[i][2] + offset, array[i+1][0],array[i+1][1],array[i+1][2] + offset);        // Far side
      if (connect == true) line(array[i][0],array[i][1],array[i][2], array[i][0],array[i][1],array[i][2] + offset);  // Connecting lines 
  }
}

/* Draw the body of the Monster Truck, also drawn are windows lights
   and the go faster stripes down the side of the vehicle. A chassis
   Connecting the 2 axels is also drawn
*/
void drawMonsterTruck() {  
  strokeWeight(2);
  stroke(0, 0, 255); // blue
  // axis near side
    
  // Racing lines   
  stroke(255, 255, 0);                           // Yellow Top Stripe
  drawTruck(racingStripeYel, 8, 30.0f, false);   // Draw the yellow racing stripes
  stroke(255, 0, 0);                             // Red Bottom Stripe
  drawTruck(racingStripeRed, 10, 30.0f, false);  // Draw the red racing stripes
  
  strokeWeight(1);
  
  
}

void drawLights() {
  stroke(255, 255, 0);                         // Yellow
  //stroke(255, 255, 255);                         // White
  
  draw3DX(lights, 4, 65, false);
  
  /*
  line(l1[0],l1[1],l1[2], l2[0],l2[1],l2[2]);  // Light
  line(l2[0],l2[1],l2[2], l3[0],l3[1],l3[2]);
  line(l3[0],l3[1],l3[2], l4[0],l4[1],l4[2]);
  line(l4[0],l4[1],l4[2], l1[0],l1[1],l1[2]);
  */
}

void drawWindows(){  
  // Windscreen
  strokeWeight(2);
  stroke(0, 255, 255); // blue
  drawOnce(windscreen, 4);  
  drawTruckShape(sideWindow2, sideWindow1, 4, true);  // Draw the side windows
  /*
  line(wi1[0],wi1[1],wi1[2], wi2[0],wi2[1],wi2[2]);  // Front
  line(wi2[0],wi2[1],wi2[2], wi3[0],wi3[1],wi3[2]);
  line(wi3[0],wi3[1],wi3[2], wi4[0],wi4[1],wi4[2]);
  line(wi4[0],wi4[1],wi4[2], wi1[0],wi1[1],wi1[2]);  
  line(sw1[0],sw1[1],sw1[2], sw2[0],sw2[1],sw2[2]);  // Passenger side (left)
  line(sw2[0],sw2[1],sw2[2], sw3[0],sw3[1],sw3[2]);
  line(sw3[0],sw3[1],sw3[2], sw4[0],sw4[1],sw4[2]);
  line(sw4[0],sw4[1],sw4[2], sw1[0],sw1[1],sw1[2]);
  line(sw5[0],sw5[1],sw5[2], sw6[0],sw6[1],sw6[2]);  // Driver side (right)
  line(sw6[0],sw6[1],sw6[2], sw7[0],sw7[1],sw7[2]);
  line(sw7[0],sw7[1],sw7[2], sw8[0],sw8[1],sw8[2]);
  line(sw8[0],sw8[1],sw8[2], sw5[0],sw5[1],sw5[2]);  
  */
}  

// Draw The Wheels
void drawWheel(int sides, float r, float h) {
  stroke(255, 255, 255);
  strokeWeight(1);
  fill(0);
  float angle = 360 / sides;
  float halfHeight = h / 2;
  // draw top shape
  beginShape();
  
  for (int i = 0; i < sides+1; i++) {
      float x = cos( radians( i * angle ) ) * r;
      float y = sin( radians( i * angle ) ) * r;
      vertex( x + w1[0], y + w1[1], w1[2] - halfHeight ); 
      line(w1[0],w1[1],w1[2] - halfHeight, x + w1[0],y + w1[1],w1[2] - halfHeight);  // centre to point on curve, add half the height to z
  }
  
  endShape(CLOSE);
  // draw bottom shape
  beginShape();
  for (int i = 0; i <= sides; i++) {
      float x  = cos( radians( i * angle ) ) * r;
      float y = sin( radians( i * angle ) ) * r;
      vertex( x + w1[0], y + w1[1], w1[2] + halfHeight ); 
      line(w1[0],w1[1],w1[2] - halfHeight, x + w1[0],y + w1[1],w1[2] - halfHeight);  // centre to point on curve, add half the height to z
      line(w1[0],w1[1],w1[2] + halfHeight, x + w1[0],y + w1[1],w1[2] + halfHeight);
  }
  endShape(CLOSE);
  
  // draw body
  beginShape(TRIANGLE_STRIP);
  for (int i = 0; i <= sides + 1; i++) {
      float x = cos( radians( i * angle ) ) * r;
      float y = sin( radians( i * angle ) ) * r;   
      vertex(x + w1[0],y + w1[1], w1[2] + halfHeight);  // OK
      vertex(x + w1[0],y + w1[1], w1[2] - halfHeight);  // OK
      stroke(0, 0, 255); // blue tyres
  }
  
  endShape(CLOSE); 
  
  strokeWeight(5);
  stroke(255, 0, 0);

  if(r >= 10) { // Stops the axel drawing spokes
    line(w2[0],w2[1],w2[2], w3[0],w3[1],w3[2]);
    line(w4[0],w4[1],w4[2], w5[0],w5[1],w5[2]);
  }
} 

void drawAxes() {
  stroke(255, 0, 0);
  line(-50, 0, 0, 50, 0, 0);  // Red X axis
  
  stroke(0, 255, 0);
  line(0, -50, 0, 0, 50, 0);  // Green Y axis
  
  stroke(0, 0, 255);
  line(0, 0, -50, 0, 0, 50);  // Blue Z axis
}