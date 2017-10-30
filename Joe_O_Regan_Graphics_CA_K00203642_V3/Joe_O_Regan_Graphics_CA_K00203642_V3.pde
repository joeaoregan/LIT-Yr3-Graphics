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

float eyeX = 100.0;         // Default Start Camera Values
float eyeY = -60.0;         
float eyeZ = 240.0;
float centerX = 100.0;
float centerY = -50.0;
float centerZ = 0.0;

/** Monster Truck Points */
// Chassis
float[] p1 = {20.0,-12.5,55.0,1.0};  // joins axels
float[] p2 = {60.0,-12.5,55.0,1.0};
float[] p3 = {60.0,-17.5,55.0,1.0};
float[] p4 = {20.0,-17.5,55.0,1.0};
float[] p5 = {20.0,-12.5,65.0,1.0}; // Square furthest from axes
float[] p6 = {60.0,-12.5,65.0,1.0};
float[] p7 = {60.0,-17.5,65.0,1.0};
float[] p8 = {20.0,-17.5,65.0,1.0};

// Body - These ones are near the axis
float[] bf1 = {5.0,-22.0,45.0,1.0}; // back bumper
float[] bf2 = {5.0,-30.0,45.0,1.0};
float[] bf3 = {32.0,-30.0,45.0,1.0};
float[] bf4 = {38.0,-38.0,50.0,1.0};
float[] bf5 = {36.0,-40.0,50.0,1.0};
float[] bf6 = {40.0,-40.0,50.0,1.0};
float[] bf7 = {42.0,-38.0,50.0,1.0};
float[] bf8 = {50.0,-38.0,50.0,1.0};
float[] bf9 = {50.0,-37.0,50.0,1.0};
float[] bf10 = {48.0,-37.0,50.0,1.0}; //
float[] bf11 = {53.0,-30.0,45.0,1.0};
float[] bf12 = {60.0,-30.0,45.0,1.0};
float[] bf13 = {70.0,-27.0,45.0,1.0};
float[] bf14 = {70.0,-23.0,45.0,1.0};
float[] bf15 = {72.0,-22.0,45.0,1.0}; // front bumper
float[] bf16 = {70.0,-20.0,45.0,1.0};
float[] bf17 = {65.0,-22.0,45.0,1.0}; // front wheel
float[] bf18 = {60.0,-24.0,45.0,1.0};
float[] bf19 = {55.0,-22.0,45.0,1.0};
float[] bf20 = {48.0,-18.0,45.0,1.0};
float[] bf21 = {30.0,-18.0,45.0,1.0};
float[] bf22 = {28.0,-24.0,45.0,1.0};
float[] bf23 = {22.0,-25.0,45.0,1.0};
float[] bf24 = {15.0,-24.0,45.0,1.0};
float[] bf25 = {10.0,-20.0,45.0,1.0};
// Body - These ones are far away
float[] bfb1 = {5.0,-22.0,75.0,1.0}; // back bumper
float[] bfb2 = {5.0,-30.0,75.0,1.0};
float[] bfb3 = {32.0,-30.0,75.0,1.0};
float[] bfb4 = {38.0,-38.0,70.0,1.0};
float[] bfb5 = {36.0,-40.0,70.0,1.0};
float[] bfb6 = {40.0,-40.0,70.0,1.0};
float[] bfb7 = {42.0,-38.0,70.0,1.0};
float[] bfb8 = {50.0,-38.0,70.0,1.0};
float[] bfb9 = {50.0,-37.0,70.0,1.0};
float[] bfb10 = {48.0,-37.0,70.0,1.0};
float[] bfb11 = {53.0,-30.0,75.0,1.0};
float[] bfb12 = {60.0,-30.0,75.0,1.0};
float[] bfb13 = {70.0,-27.0,75.0,1.0};
float[] bfb14 = {70.0,-23.0,75.0,1.0};
float[] bfb15 = {72.0,-22.0,75.0,1.0}; // front bumper
float[] bfb16 = {70.0,-20.0,75.0,1.0};
float[] bfb17 = {65.0,-22.0,75.0,1.0}; // front wheel
float[] bfb18 = {60.0,-24.0,75.0,1.0};
float[] bfb19 = {55.0,-22.0,75.0,1.0};
float[] bfb20 = {48.0,-18.0,75.0,1.0};
float[] bfb21 = {30.0,-18.0,75.0,1.0};
float[] bfb22 = {28.0,-24.0,75.0,1.0};
float[] bfb23 = {22.0,-25.0,75.0,1.0};
float[] bfb24 = {15.0,-24.0,75.0,1.0};
float[] bfb25 = {10.0,-20.0,75.0,1.0};
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
// Racing Stripes left
float[] rs1 = {5.25, -28.0, 45.0, 1.0};  // Yellow Top
float[] rs2 = {30.0, -28.0, 45.0, 1.0};
float[] rs3 = {35.0, -24.0, 45.0, 1.0};
float[] rs4 = {59.5, -24.0, 45.0, 1.0};

float[] rs5 = {5.25, -25.6, 45.0, 1.0}; // Yellow Bottom
float[] rs6 = {30.0, -25.6, 45.0, 1.0};
float[] rs7 = {35.0, -22.6, 45.0, 1.0};
float[] rs8 = {55.5, -22.6, 45.0, 1.0};

float[] rs9 = {5.25, -25.4, 45.0, 1.0};  // Red Top
float[] rs10 = {30.0, -25.4, 45.0, 1.0};
float[] rs11 = {35.0, -22.4, 45.0, 1.0};
float[] rs12 = {55.5, -22.4, 45.0, 1.0};

float[] rs13 = {5.25, -23.0, 45.0, 1.0}; // Red Bottom
float[] rs14 = {13.5, -23.0, 45.0, 1.0};
float[] rs15 = {28.5, -23.0, 45.0, 1.0};
float[] rs16 = {30.0, -23.0, 45.0, 1.0};
float[] rs17 = {35.0, -21.0, 45.0, 1.0};
float[] rs18 = {52.5, -21.0, 45.0, 1.0};
// Racing Stripes Right
float[] rsb1 = {5.25, -28.0, 75.0, 1.0};  // Yellow Top
float[] rsb2 = {30.0, -28.0, 75.0, 1.0};
float[] rsb3 = {35.0, -24.0, 75.0, 1.0};
float[] rsb4 = {59.5, -24.0, 75.0, 1.0};

float[] rsb5 = {5.25, -25.6, 75.0, 1.0};  // Yellow Bottom
float[] rsb6 = {30.0, -25.6, 75.0, 1.0};
float[] rsb7 = {35.0, -22.6, 75.0, 1.0};
float[] rsb8 = {55.5, -22.6, 75.0, 1.0};

float[] rsb9 = {5.25, -25.4, 75.0, 1.0};  // Red Top
float[] rsb10 = {30.0, -25.4, 75.0, 1.0};
float[] rsb11 = {35.0, -22.4, 75.0, 1.0};
float[] rsb12 = {55.5, -22.4, 75.0, 1.0};

float[] rsb13 = {5.25, -23.0, 75.0, 1.0};  // Red Bottom
float[] rsb14 = {13.5, -23.0, 75.0, 1.0};  // With Wheel Arch
float[] rsb15 = {28.5, -23.0, 75.0, 1.0};
float[] rsb16 = {30.0, -23.0, 75.0, 1.0};
float[] rsb17 = {35.0, -21.0, 75.0, 1.0};
float[] rsb18 = {52.5, -21.0, 75.0, 1.0};
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
float[] cr1 = {10.0,0.0,8.0,1.0};    // back bumper
float[] cr2 = {10.0,-3.0,8.0,1.0};
float[] cr3 = {10.0,-4.0,10.0,1.0};
float[] cr4 = {10.0,-11.0,10.0,1.0}; // Boot
float[] cr5 = {10.0,-13.0,17.0,1.0};
float[] cr6 = {10.0,-19.0,28.0,1.0}; // Roof
float[] cr7 = {10.0,-20.0,42.0,1.0};
float[] cr8 = {10.0,-12.0,50.0,1.0}; // Bonnet
float[] cr9 = {10.0,-8.0,68.0,1.0};
float[] cr10 = {10.0,-4.0,68.0,1.0}; // Bumper
float[] cr11 = {10.0,-3.0,70.0,1.0};
float[] cr12 = {10.0,0.0,70.0,1.0};
float[] cr13 = {10.0,0.0,64.0,1.0};  // Front Wheel
float[] cr14 = {10.0,-5.0,61.0,1.0};
float[] cr15 = {10.0,-5.0,53.0,1.0};
float[] cr16 = {10.0,0.0,50.0,1.0};
float[] cr17 = {10.0,0.0,32.0,1.0};  // Back wheel
float[] cr18 = {10.0,-5.0,29.0,1.0};
float[] cr19 = {10.0,-5.0,21.0,1.0};
float[] cr20 = {10.0,0.0,17.0,1.0};

// Left side (Passenger side)
float[] crb1 = {40.0,0.0,8.0,1.0};    // back bumper
float[] crb2 = {40.0,-3.0,8.0,1.0};
float[] crb3 = {40.0,-4.0,10.0,1.0};
float[] crb4 = {40.0,-11.0,10.0,1.0}; // Boot
float[] crb5 = {40.0,-13.0,17.0,1.0};
float[] crb6 = {40.0,-19.0,28.0,1.0}; // Roof
float[] crb7 = {40.0,-20.0,42.0,1.0};
float[] crb8 = {40.0,-12.0,50.0,1.0}; // Bonnet
float[] crb9 = {40.0,-8.0,68.0,1.0};
float[] crb10 = {40.0,-4.0,68.0,1.0}; // Bumper
float[] crb11 = {40.0,-3.0,70.0,1.0};
float[] crb12 = {40.0,0.0,70.0,1.0};
float[] crb13 = {40.0,0.0,64.0,1.0};  // Front Wheel
float[] crb14 = {40.0,-5.0,61.0,1.0};
float[] crb15 = {40.0,-5.0,53.0,1.0};
float[] crb16 = {40.0,0.0,50.0,1.0};
float[] crb17 = {40.0,0.0,32.0,1.0};  // Back wheel
float[] crb18 = {40.0,-5.0,29.0,1.0};
float[] crb19 = {40.0,-5.0,21.0,1.0};
float[] crb20 = {40.0,0.0,17.0,1.0};
// Lights
float[] crl1 = {11.0,-5.0,68.0,1.0};  // front light right
float[] crl2 = {11.0,-7.0,68.0,1.0};
float[] crl3 = {16.0,-7.0,68.0,1.0};
float[] crl4 = {16.0,-5.0,68.0,1.0};
float[] crl5 = {34.0,-5.0,68.0,1.0};  // front light left
float[] crl6 = {34.0,-7.0,68.0,1.0};
float[] crl7 = {39.0,-7.0,68.0,1.0};
float[] crl8 = {39.0,-5.0,68.0,1.0};

float[] crl9 = {11.0,-5.0,10.0,1.0};   // Back light right
float[] crl10 = {11.0,-10.0,10.0,1.0};
float[] crl11 = {14.0,-10.0,10.0,1.0};
float[] crl12 = {14.0,-5.0,10.0,1.0};
float[] crl13 = {36.0,-5.0,10.0,1.0};  // Back light left
float[] crl14 = {36.0,-10.0,10.0,1.0};
float[] crl15 = {39.0,-10.0,10.0,1.0};
float[] crl16 = {39.0,-5.0,10.0,1.0};
// Windscreens
float[] crw1 = {11.0,-12.0,50.0,1.0};  // Front windscreen
float[] crw2 = {11.0,-19.0,42.0,1.0};
float[] crw3 = {39.0,-19.25,42.0,1.0};
float[] crw4 = {39.0,-12.0,50.0,1.0};
float[] crw5 = {11.0,-13.0,17.0,1.0};   // Back windscreen
float[] crw6 = {11.0,-19.0,28.0,1.0};
float[] crw7 = {39.0,-19.25,28.0,1.0};
float[] crw8 = {39.0,-13.0,17.0,1.0};
float[] crw9 = {10.0,-13.0,18.0,1.0};   // Side windscreen back
float[] crw10 = {10.0,-19.0,29.0,1.0};
float[] crw11 = {10.0,-19.25,34.0,1.0};
float[] crw12 = {10.0,-13.0,34.0,1.0};
float[] crw13 = {40.0,-13.0,18.0,1.0};   // Side windscreen back
float[] crw14 = {40.0,-19.0,29.0,1.0};
float[] crw15 = {40.0,-19.25,34.0,1.0};
float[] crw16 = {40.0,-13.0,34.0,1.0};

float[] crw17 = {10.0,-13.0,36.0,1.0};   // Side windscreen front
float[] crw18 = {10.0,-19.5,36.0,1.0};
float[] crw19 = {10.0,-19.75,41.0,1.0};
float[] crw20 = {10.0,-13.0,49.0,1.0};
float[] crw21 = {40.0,-13.0,36.0,1.0};   // Side windscreen front
float[] crw22 = {40.0,-19.5,36.0,1.0};
float[] crw23 = {40.0,-19.75,41.0,1.0};
float[] crw24 = {40.0,-13.0,49.0,1.0};


// transform matrix            
//2D matrices defined by columns, 1st col 2nd col 3rd col 4th col
float[][] scalingMatrixDown = {{0.75,0.0,0.0,0.0},{0.0,0.75,0.0,0.0},{0.0,0.0,0.75,0.0},{0.0,0.0,0.0,1.0}};     // scale by 3/4
float[][] scalingMatrixUp = {{1.333,0.0,0.0,0.0},{0.0,1.333,0.0,0.0},{0.0,0.0,1.333,0.0},{0.0,0.0,0.0,1.0}};     // scale by 4/3
float[][] translateInMatrix = {{1.0,0.0,0.0,0.0},{0.0,1.0,0.0,0.0},{0.0,0.0,1.0,0.0},{-12,0,0,1.0}}; // translate by distance of -30
float[][] translateOutMatrix = {{1.0,0.0,0.0,0.0},{0.0,1.0,0.0,0.0},{0.0,0.0,1.0,0.0},{12,0,0,1.0}};   // translate by distance of -30

float theta = radians(10); // convert degrees to radians
  
float[][] rotZMatrix= {{cos(theta),sin(theta),0.0,0.0},{-sin(theta),cos(theta),0.0,0.0},{0.0,0.0,1.0,0.0},{0.0,0.0,0.0,1.0}}; // roatate around z axis

float[][] m;  // Used to Scale B, I, G.
float[][] n;  // Used to Translate F, O, O, T.
float[][] o;  // Used to Rotate wheel

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
  
  // B Scale
  for (int i = 0; i < 14; i++){
     arrB[i] = transform_point(m, arrB[i]);
     if (i < 5) {
       arrBhole1[i] = transform_point(m, arrBhole1[i]);
       arrBhole2[i] = transform_point(m, arrBhole2[i]);
     } else continue;
  }
      
  // I Scale
  for (int i = 0; i < 13; i++){
     arrI[i] = transform_point(m, arrI[i]);
  }
  
  // G Scale 
  // I Scale
  for (int i = 0; i < 18; i++){
     arrG[i] = transform_point(m, arrG[i]);
  }
  
  // Move F left and right  
  for (int i = 0; i < 19; i++){
     arrF[i] = transform_point(n, arrF[i]);            // Transform by matrix n, to move left and right
  }
  
  // Move O left and right
  for (int i = 0; i < 9; i++){
     arrO[i] = transform_point(n, arrO[i]);            // Transform by matrix n, to move left and right
     if (i < 5) {
       arrOhole[i] = transform_point(n, arrOhole[i]);  // Draw the hole in the O
     } else continue;
  }
  
  // Move T left and right
  for (int i = 0; i < 13; i++){
     arrT[i] = transform_point(n, arrT[i]);            // Transform by matrix n, to move left and right
  }
  
  w1 = transform_point(o, w1);
  w2 = transform_point(o, w2);
  w3 = transform_point(o, w3);
  w4 = transform_point(o, w4);  
  w5 = transform_point(o, w5);
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
  translate(0,40,0); // Lower the writing
  drawB();
  drawI();
  drawG();
  drawF();
  drawO();
  translate(15,0,0);
  drawO();
  translate(-15,0,0);
  drawT();
  translate(0,-40,0);
  
  /* Monster Truck */
  o = rotZMatrix;
  
  // Scale down / translate in
  if(i <= 5) {
    m=scalingMatrixDown;
    n=translateInMatrix;
    applyTransform();
    i++;
    if(i == 5) j = 0;
  }
  
  // Scale up / translate out
  if(j <= 5) {
    m=scalingMatrixUp;
    n=translateOutMatrix;
    applyTransform();
    j++;
    if(j == 5) i = 0;
  }
  
  drawMonsterTruck();
  drawChassis();
  drawLights();
  translate(0,0,-22);
  drawLights();
  translate(-65,0,0);
  drawLights();
  translate(0,0,22);
  drawLights();
  translate(65,0,0);
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
       centerY += 5;
     } else if ((key == CODED && keyCode == DOWN) || key == 's' || key == 'S'){
       centerY -= 5;
     } else if ((key == CODED && keyCode == LEFT) || key == 'a' || key == 'A'){
       centerX += 5;
     } else if ((key == CODED && keyCode == RIGHT) || key == 'd' || key == 'D'){
       centerX -= 5;
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
void drawB() {                                                                                        // Draw The Letter 'B'
  for (int i = 0; i < 13; i++) {                                                                      // Draw The Letter 'B'
      stroke(0, 0, 255);                                                                              // Blue
      line(arrB[i][0],arrB[i][1],arrB[i][2], arrB[i+1][0],arrB[i+1][1],arrB[i+1][2]);                 // Draw B Front outline
      line(arrB[i][0],arrB[i][1],arrB[i][2] + 10.0f, arrB[i+1][0],arrB[i+1][1],arrB[i+1][2] + 10.0f); // Draw B Back outline
      stroke(50, 50, 255);                                                                            // Light blue
      line(arrB[i][0],arrB[i][1],arrB[i][2], arrB[i][0],arrB[i][1],arrB[i][2] + 10.0f);               // Draw B Sides
      
      if (i < 4) {
        line(arrBhole1[i][0],arrBhole1[i][1],arrBhole1[i][2], arrBhole1[i][0],arrBhole1[i][1],arrBhole1[i][2] + 10.0f);                // Draw B hole 1 Side
        line(arrBhole2[i][0],arrBhole2[i][1],arrBhole2[i][2], arrBhole2[i][0],arrBhole2[i][1],arrBhole2[i][2] + 10.0f);                // Draw B hole 2 Side
        stroke(0, 0, 255);                                        // Blue
        line(arrBhole1[i][0],arrBhole1[i][1],arrBhole1[i][2], arrBhole1[i+1][0],arrBhole1[i+1][1],arrBhole1[i+1][2]);                  // Draw B hole 1 front
        line(arrBhole2[i][0],arrBhole2[i][1],arrBhole2[i][2], arrBhole2[i+1][0],arrBhole2[i+1][1],arrBhole2[i+1][2]);                  // Draw B hole 2 front
        line(arrBhole1[i][0],arrBhole1[i][1],arrBhole1[i][2] + 10.0f, arrBhole1[i+1][0],arrBhole1[i+1][1],arrBhole1[i+1][2] + 10.0f);  // Draw B hole 1 back
        line(arrBhole2[i][0],arrBhole2[i][1],arrBhole2[i][2] + 10.0f, arrBhole2[i+1][0],arrBhole2[i+1][1],arrBhole2[i+1][2] + 10.0f);  // Draw B hole 2 back
      } 
      else continue;
  }
}

void drawI() {                                                                                         // Draw The Letter 'I'
  for (int i = 0; i < 12; i++) {                                                                       // Size 1 less than the number of array elements as using i+1 to draw to the next point
      stroke(0, 0, 255);                                                                               // Blue                                                                  
      line(arrI[i][0],arrI[i][1],arrI[i][2], arrI[i+1][0],arrI[i+1][1],arrI[i+1][2]);                  // Draw I Back outline
      line(arrI[i][0],arrI[i][1],arrI[i][2] + 10.0f, arrI[i+1][0],arrI[i+1][1],arrI[i+1][2] + 10.0f);  // Draw I Front outline
      stroke(50, 50, 255);                                                                             // Light blue
      line(arrI[i][0],arrI[i][1],arrI[i][2], arrI[i][0],arrI[i][1],arrI[i][2] + 10.0f);                // Draw I Sides    
  }
}

void drawG() {                                                                                         // Draw The Letter 'G'
  for (int i = 0; i < 17; i++) {                                                                       // Size 1 less than the number of array elements as using i+1 to draw to the next point
      stroke(0, 0, 255);                                                                               // Blue                                                                  
      line(arrG[i][0],arrG[i][1],arrG[i][2], arrG[i+1][0],arrG[i+1][1],arrG[i+1][2]);                  // Draw G Back outline
      line(arrG[i][0],arrG[i][1],arrG[i][2] + 10.0f, arrG[i+1][0],arrG[i+1][1],arrG[i+1][2] + 10.0f);  // Draw G Front outline
      stroke(50, 50, 255);                                                                             // Light blue
      line(arrG[i][0],arrG[i][1],arrG[i][2], arrG[i][0],arrG[i][1],arrG[i][2] + 10.0f);                // Draw G Sides    
  }
}

void drawF() {                                                                                         // Draw The Letter 'F' 
  for (int i = 0; i < 18; i++) {                                                                       // Size 1 less than the number of array elements as using i+1 to draw to the next point
      stroke(0, 0, 255);                                                                               // Blue                                                                  
      line(arrF[i][0],arrF[i][1],arrF[i][2], arrF[i+1][0],arrF[i+1][1],arrF[i+1][2]);                  // Draw F Back outline
      line(arrF[i][0],arrF[i][1],arrF[i][2] + 10.0f, arrF[i+1][0],arrF[i+1][1],arrF[i+1][2] + 10.0f);  // Draw F Front outline
      stroke(50, 50, 255);                                                                             // Light blue
      line(arrF[i][0],arrF[i][1],arrF[i][2], arrF[i][0],arrF[i][1],arrF[i][2] + 10.0f);                // Draw F Sides    
  }
}

void drawO() {                                                                                         // Draw The Letter 'O'
  for (int i = 0; i < 8; i++) {                                                                        // Size 1 less than the number of array elements as using i+1 to draw to the next point
      stroke(0, 0, 255);                                                                               // Blue                                                                  
      line(arrO[i][0],arrO[i][1],arrO[i][2], arrO[i+1][0],arrO[i+1][1],arrO[i+1][2]);                  // Draw O Back outline
      line(arrO[i][0],arrO[i][1],arrO[i][2] + 10.0f, arrO[i+1][0],arrO[i+1][1],arrO[i+1][2] + 10.0f);  // Draw O Front outline
      stroke(50, 50, 255);                                                                             // Light blue
      line(arrO[i][0],arrO[i][1],arrO[i][2], arrO[i][0],arrO[i][1],arrO[i][2] + 10.0f);                // Draw O Sides  
      
      if (i < 4) {
        line(arrOhole[i][0],arrOhole[i][1],arrOhole[i][2], arrOhole[i][0],arrOhole[i][1],arrOhole[i][2] + 10.0f);                // Draw O hole 1 Side
        stroke(0, 0, 255);                                                                                                       // Blue
        line(arrOhole[i][0],arrOhole[i][1],arrOhole[i][2], arrOhole[i+1][0],arrOhole[i+1][1],arrOhole[i+1][2]);                  // Draw O hole 1 front
        line(arrOhole[i][0],arrOhole[i][1],arrOhole[i][2] + 10.0f, arrOhole[i+1][0],arrOhole[i+1][1],arrOhole[i+1][2] + 10.0f);  // Draw O hole 1 back
      } 
      else continue;
  }
}

void drawT() {                                                                                         // Draw The Letter 'T'
  for (int i = 0; i < 12; i++) {                                                                       // Size 1 less than the number of array elements as using i+1 to draw to the next point
      stroke(0, 0, 255);                                                                               // Blue                                                                  
      line(arrT[i][0],arrT[i][1],arrT[i][2], arrT[i+1][0],arrT[i+1][1],arrT[i+1][2]);                  // Draw F Back outline
      line(arrT[i][0],arrT[i][1],arrT[i][2] + 10.0f, arrT[i+1][0],arrT[i+1][1],arrT[i+1][2] + 10.0f);  // Draw F Front outline
      stroke(50, 50, 255);                                                                             // Light blue
      line(arrT[i][0],arrT[i][1],arrT[i][2], arrT[i][0],arrT[i][1],arrT[i][2] + 10.0f);                // Draw F Sides  
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
  line(bf1[0],bf1[1],bf1[2], bf2[0],bf2[1],bf2[2]);      // Back bumper
  line(bf2[0],bf2[1],bf2[2], bf3[0],bf3[1],bf3[2]);
  line(bf3[0],bf3[1],bf3[2], bf4[0],bf4[1],bf4[2]);
  line(bf4[0],bf4[1],bf4[2], bf5[0],bf5[1],bf5[2]);
  line(bf5[0],bf5[1],bf5[2], bf6[0],bf6[1],bf6[2]);
  line(bf6[0],bf6[1],bf6[2], bf7[0],bf7[1],bf7[2]);
  line(bf7[0],bf7[1],bf7[2], bf8[0],bf8[1],bf8[2]);
  line(bf8[0],bf8[1],bf8[2], bf9[0],bf9[1],bf9[2]);
  line(bf9[0],bf9[1],bf9[2], bf10[0],bf10[1],bf10[2]);
  line(bf10[0],bf10[1],bf10[2], bf11[0],bf11[1],bf11[2]);
  line(bf11[0],bf11[1],bf11[2], bf12[0],bf12[1],bf12[2]);
  line(bf12[0],bf12[1],bf12[2], bf13[0],bf13[1],bf13[2]);
  line(bf13[0],bf13[1],bf13[2], bf14[0],bf14[1],bf14[2]);
  line(bf14[0],bf14[1],bf14[2], bf15[0],bf15[1],bf15[2]);
  line(bf15[0],bf15[1],bf15[2], bf16[0],bf16[1],bf16[2]);
  line(bf16[0],bf16[1],bf16[2], bf17[0],bf17[1],bf17[2]); 
  line(bf17[0],bf17[1],bf17[2], bf18[0],bf18[1],bf18[2]);
  line(bf18[0],bf18[1],bf18[2], bf19[0],bf19[1],bf19[2]);
  line(bf19[0],bf19[1],bf19[2], bf20[0],bf20[1],bf20[2]);
  line(bf20[0],bf20[1],bf20[2], bf21[0],bf21[1],bf21[2]);
  line(bf21[0],bf21[1],bf21[2], bf22[0],bf22[1],bf22[2]); 
  line(bf22[0],bf22[1],bf22[2], bf23[0],bf23[1],bf23[2]); 
  line(bf23[0],bf23[1],bf23[2], bf24[0],bf24[1],bf24[2]);
  line(bf24[0],bf24[1],bf24[2], bf25[0],bf25[1],bf25[2]);
  line(bf25[0],bf25[1],bf25[2], bf1[0],bf1[1],bf1[2]);
  
  // axis far side
  line(bfb1[0],bfb1[1],bfb1[2], bfb2[0],bfb2[1],bfb2[2]);      // Back Bumper
  line(bfb2[0],bfb2[1],bfb2[2], bfb3[0],bfb3[1],bfb3[2]);
  line(bfb3[0],bfb3[1],bfb3[2], bfb4[0],bfb4[1],bfb4[2]); 
  line(bfb4[0],bfb4[1],bfb4[2], bfb5[0],bfb5[1],bfb5[2]); 
  line(bfb5[0],bfb5[1],bfb5[2], bfb6[0],bfb6[1],bfb6[2]);  
  line(bfb6[0],bfb6[1],bfb6[2], bfb7[0],bfb7[1],bfb7[2]);  
  line(bfb7[0],bfb7[1],bfb7[2], bfb8[0],bfb8[1],bfb8[2]);  
  line(bfb8[0],bfb8[1],bfb8[2], bfb9[0],bfb9[1],bfb9[2]); 
  line(bfb9[0],bfb9[1],bfb9[2], bfb10[0],bfb10[1],bfb10[2]);  
  line(bfb10[0],bfb10[1],bfb10[2], bfb11[0],bfb11[1],bfb11[2]); 
  line(bfb11[0],bfb11[1],bfb11[2], bfb12[0],bfb12[1],bfb12[2]); 
  line(bfb12[0],bfb12[1],bfb12[2], bfb13[0],bfb13[1],bfb13[2]); 
  line(bfb13[0],bfb13[1],bfb13[2], bfb14[0],bfb14[1],bfb14[2]); 
  line(bfb14[0],bfb14[1],bfb14[2], bfb15[0],bfb15[1],bfb15[2]);  
  line(bfb15[0],bfb15[1],bfb15[2], bfb16[0],bfb16[1],bfb16[2]); 
  line(bfb16[0],bfb16[1],bfb16[2], bfb17[0],bfb17[1],bfb17[2]);  
  line(bfb17[0],bfb17[1],bfb17[2], bfb18[0],bfb18[1],bfb18[2]);  
  line(bfb18[0],bfb18[1],bfb18[2], bfb19[0],bfb19[1],bfb19[2]);  
  line(bfb19[0],bfb19[1],bfb19[2], bfb20[0],bfb20[1],bfb20[2]);  
  line(bfb20[0],bfb20[1],bfb20[2], bfb21[0],bfb21[1],bfb21[2]);  
  line(bfb21[0],bfb21[1],bfb21[2], bfb22[0],bfb22[1],bfb22[2]);  
  line(bfb22[0],bfb22[1],bfb22[2], bfb23[0],bfb23[1],bfb23[2]);  
  line(bfb23[0],bfb23[1],bfb23[2], bfb24[0],bfb24[1],bfb24[2]); 
  line(bfb24[0],bfb24[1],bfb24[2], bfb25[0],bfb25[1],bfb25[2]); 
  line(bfb25[0],bfb25[1],bfb25[2], bfb1[0],bfb1[1],bfb1[2]); 
  
  // join lines
  line(bf1[0],bf1[1],bf1[2], bfb1[0],bfb1[1],bfb1[2]); 
  line(bf2[0],bf2[1],bf2[2], bfb2[0],bfb2[1],bfb2[2]);  
  line(bf3[0],bf3[1],bf3[2], bfb3[0],bfb3[1],bfb3[2]); 
  line(bf4[0],bf4[1],bf4[2], bfb4[0],bfb4[1],bfb4[2]); 
  line(bf5[0],bf5[1],bf5[2], bfb5[0],bfb5[1],bfb5[2]);  
  line(bf6[0],bf6[1],bf6[2], bfb6[0],bfb6[1],bfb6[2]); 
  line(bf7[0],bf7[1],bf7[2], bfb7[0],bfb7[1],bfb7[2]); 
  line(bf8[0],bf8[1],bf8[2], bfb8[0],bfb8[1],bfb8[2]); 
  line(bf9[0],bf9[1],bf9[2], bfb9[0],bfb9[1],bfb9[2]); 
  line(bf10[0],bf10[1],bf10[2], bfb10[0],bfb10[1],bfb10[2]); 
  line(bf11[0],bf11[1],bf11[2], bfb11[0],bfb11[1],bfb11[2]); 
  line(bf12[0],bf12[1],bf12[2], bfb12[0],bfb12[1],bfb12[2]); 
  line(bf13[0],bf13[1],bf13[2], bfb13[0],bfb13[1],bfb13[2]); 
  line(bf14[0],bf14[1],bf14[2], bfb14[0],bfb14[1],bfb14[2]); 
  line(bf15[0],bf15[1],bf15[2], bfb15[0],bf15[1],bf15[2]); 
  line(bf16[0],bf16[1],bf16[2], bfb16[0],bfb16[1],bfb16[2]);  
  line(bf17[0],bf17[1],bf17[2], bfb17[0],bfb17[1],bfb17[2]);  
  line(bf18[0],bf18[1],bf18[2], bfb18[0],bfb18[1],bfb18[2]);  
  line(bf19[0],bf19[1],bf19[2], bfb19[0],bfb19[1],bfb19[2]);  
  line(bf20[0],bf20[1],bf20[2], bfb20[0],bfb20[1],bfb20[2]);  
  line(bf21[0],bf21[1],bf21[2], bfb21[0],bfb21[1],bfb21[2]); 
  line(bf22[0],bf22[1],bf22[2], bfb22[0],bfb22[1],bfb22[2]); 
  line(bf23[0],bf23[1],bf23[2], bfb23[0],bfb23[1],bfb23[2]); 
  line(bf24[0],bf24[1],bf24[2], bfb24[0],bfb24[1],bfb24[2]); 
  line(bf25[0],bf25[1],bf25[2], bfb25[0],bfb25[1],bfb25[2]); 
  // Racing lines   
  stroke(255, 255, 0); // Yellow Stripe
  line(rs1[0],rs1[1],rs1[2], rs2[0],rs2[1],rs2[2]); // Top
  line(rs2[0],rs2[1],rs2[2], rs3[0],rs3[1],rs3[2]); // Bottom
  line(rs3[0],rs3[1],rs3[2], rs4[0],rs4[1],rs4[2]);   
  line(rs5[0],rs5[1],rs5[2], rs6[0],rs6[1],rs6[2]); 
  line(rs6[0],rs6[1],rs6[2], rs7[0],rs7[1],rs7[2]);  
  line(rs7[0],rs7[1],rs7[2], rs8[0],rs8[1],rs8[2]); 
  line(rs1[0],rs1[1],rs1[2], rs5[0],rs5[1],rs5[2]); // Join Ends
  line(rs4[0],rs4[1],rs4[2], rs8[0],rs8[1],rs8[2]); // Join Ends
  
  line(rsb1[0],rsb1[1],rsb1[2], rsb2[0],rsb2[1],rsb2[2]); // Top
  line(rsb2[0],rsb2[1],rsb2[2], rsb3[0],rsb3[1],rsb3[2]); 
  line(rsb3[0],rsb3[1],rsb3[2], rsb4[0],rsb4[1],rsb4[2]);  
  line(rsb5[0],rsb5[1],rsb5[2], rsb6[0],rsb6[1],rsb6[2]); // Bottom
  line(rsb6[0],rsb6[1],rsb6[2], rsb7[0],rsb7[1],rsb7[2]);  
  line(rsb7[0],rsb7[1],rsb7[2], rsb8[0],rsb8[1],rsb8[2]); 
  line(rsb1[0],rsb1[1],rsb1[2], rsb5[0],rsb5[1],rsb5[2]); // Join Ends
  line(rsb4[0],rsb4[1],rsb4[2], rsb8[0],rsb8[1],rsb8[2]); // Join Ends
  
  stroke(255, 0, 0); // Red Stripe  
  line(rs9[0],rs9[1],rs9[2], rs10[0],rs10[1],rs10[2]);    // Top
  line(rs10[0],rs10[1],rs10[2], rs11[0],rs11[1],rs11[2]); 
  line(rs11[0],rs11[1],rs11[2], rs12[0],rs12[1],rs12[2]);  
  line(rs13[0],rs13[1],rs13[2], rs14[0],rs14[1],rs14[2]); // Bottom
  line(rs15[0],rs15[1],rs15[2], rs16[0],rs16[1],rs16[2]);
  line(rs16[0],rs16[1],rs16[2], rs17[0],rs17[1],rs17[2]); 
  line(rs17[0],rs17[1],rs17[2], rs18[0],rs18[1],rs18[2]);  
  line(rs9[0],rs9[1],rs9[2], rs13[0],rs13[1],rs13[2]);    // Join ends
  line(rs12[0],rs12[1],rs12[2], rs18[0],rs18[1],rs18[2]); // Join ends
  
  line(rsb9[0],rsb9[1],rsb9[2], rsb10[0],rsb10[1],rsb10[2]);    // Top
  line(rsb10[0],rsb10[1],rsb10[2], rsb11[0],rsb11[1],rsb11[2]); 
  line(rsb11[0],rsb11[1],rsb11[2], rsb12[0],rsb12[1],rsb12[2]);  
  line(rsb13[0],rsb13[1],rsb13[2], rsb14[0],rsb14[1],rsb14[2]); // Bottom
  line(rsb15[0],rsb15[1],rsb15[2], rsb16[0],rsb16[1],rsb16[2]);
  line(rsb16[0],rsb16[1],rsb16[2], rsb17[0],rsb17[1],rsb17[2]); 
  line(rsb17[0],rsb17[1],rsb17[2], rsb18[0],rsb18[1],rsb18[2]); 
  line(rsb9[0],rsb9[1],rsb9[2], rsb13[0],rsb13[1],rsb13[2]);    // Join ends
  line(rsb12[0],rsb12[1],rsb12[2], rsb18[0],rsb18[1],rsb18[2]); // Join ends
  
  strokeWeight(1);
}
void drawLights() {
  stroke(255, 255, 0);                         // Yellow
  line(l1[0],l1[1],l1[2], l2[0],l2[1],l2[2]);  // Light
  line(l2[0],l2[1],l2[2], l3[0],l3[1],l3[2]);
  line(l3[0],l3[1],l3[2], l4[0],l4[1],l4[2]);
  line(l4[0],l4[1],l4[2], l1[0],l1[1],l1[2]);
}
void drawWindows(){  
  // Windscreen
  stroke(0, 255, 255); // blue
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
  
}
void drawChassis () {  // Underside of monster truck, connects axels
  strokeWeight(1);
  stroke(50) ; // Grey
  line(p1[0],p1[1],p1[2], p2[0],p2[1],p2[2]); // p1 to p2
  line(p2[0],p2[1],p2[2], p3[0],p3[1],p3[2]); // p2 to p3
  line(p3[0],p3[1],p3[2], p4[0],p4[1],p4[2]); // p3 to p4
  line(p4[0],p4[1],p4[2], p1[0],p1[1],p1[2]); // p4 to p1
  
  line(p5[0],p5[1],p5[2], p6[0],p6[1],p6[2]); // p5 to p6
  line(p6[0],p6[1],p6[2], p7[0],p7[1],p7[2]); // p6 to p7
  line(p7[0],p7[1],p7[2], p8[0],p8[1],p8[2]); // p7 to p8
  line(p8[0],p8[1],p8[2], p5[0],p5[1],p5[2]); // p8 to p5
  
  line(p2[0],p2[1],p2[2], p6[0],p6[1],p6[2]); // p2 to p6
  line(p3[0],p3[1],p3[2], p7[0],p7[1],p7[2]); // p3 to p7
  
  line(p1[0],p1[1],p1[2], p5[0],p5[1],p5[2]); // p1 to p5
  line(p4[0],p4[1],p4[2], p8[0],p8[1],p8[2]); // p4 to p8
}

// Draw a wrecked car
void drawCar(){  
  line(cr1[0],cr1[1],cr1[2], cr2[0],cr2[1],cr2[2]);       // Back Bumper
  line(cr2[0],cr2[1],cr2[2], cr3[0],cr3[1],cr3[2]);
  line(cr3[0],cr3[1],cr3[2], cr4[0],cr4[1],cr4[2]);       // Back
  line(cr4[0],cr4[1],cr4[2], cr5[0],cr5[1],cr5[2]);       // Boot
  line(cr5[0],cr5[1],cr5[2], cr6[0],cr6[1],cr6[2]); 
  line(cr6[0],cr6[1],cr6[2], cr7[0],cr7[1],cr7[2]);       // Roof 
  line(cr7[0],cr7[1],cr7[2], cr8[0],cr8[1],cr8[2]); 
  line(cr8[0],cr8[1],cr8[2], cr9[0],cr9[1],cr9[2]);       // Bonnet
  line(cr9[0],cr9[1],cr9[2], cr10[0],cr10[1],cr10[2]); 
  line(cr10[0],cr10[1],cr10[2], cr11[0],cr11[1],cr11[2]); // 
  line(cr11[0],cr11[1],cr11[2], cr12[0],cr12[1],cr12[2]); // Front Bumber
  line(cr12[0],cr12[1],cr12[2], cr13[0],cr13[1],cr13[2]); // Underside
  line(cr13[0],cr13[1],cr13[2], cr14[0],cr14[1],cr14[2]);
  line(cr14[0],cr14[1],cr14[2], cr15[0],cr15[1],cr15[2]); 
  line(cr15[0],cr15[1],cr15[2], cr16[0],cr16[1],cr16[2]); 
  line(cr16[0],cr16[1],cr16[2], cr17[0],cr17[1],cr17[2]); 
  line(cr17[0],cr17[1],cr17[2], cr18[0],cr18[1],cr18[2]); 
  line(cr18[0],cr18[1],cr18[2], cr19[0],cr19[1],cr19[2]); 
  line(cr19[0],cr19[1],cr19[2], cr20[0],cr20[1],cr20[2]); 
  line(cr20[0],cr20[1],cr20[2], cr1[0],cr1[1],cr1[2]); 

  // left side (Passenger)
  line(crb1[0],crb1[1],crb1[2], crb2[0],crb2[1],crb2[2]);       // Back Bumper
  line(crb2[0],crb2[1],crb2[2], crb3[0],crb3[1],crb3[2]);  
  line(crb3[0],crb3[1],crb3[2], crb4[0],crb4[1],crb4[2]);       // Back
  line(crb4[0],crb4[1],crb4[2], crb5[0],crb5[1],crb5[2]);       // Boot
  line(crb5[0],crb5[1],crb5[2], crb6[0],crb6[1],crb6[2]); 
  line(crb6[0],crb6[1],crb6[2], crb7[0],crb7[1],crb7[2]);       // Roof
  line(crb7[0],crb7[1],crb7[2], crb8[0],crb8[1],crb8[2]); 
  line(crb8[0],crb8[1],crb8[2], crb9[0],crb9[1],crb9[2]);       // Bonnet
  line(crb9[0],crb9[1],crb9[2], crb10[0],crb10[1],crb10[2]);
  line(crb10[0],crb10[1],crb10[2], crb11[0],crb11[1],crb11[2]);
  line(crb11[0],crb11[1],crb11[2], crb12[0],crb12[1],crb12[2]); // Front Bumber
  line(crb12[0],crb12[1],crb12[2], crb13[0],crb13[1],crb13[2]); // Underside
  line(crb13[0],crb13[1],crb13[2], crb14[0],crb14[1],crb14[2]);
  line(crb14[0],crb14[1],crb14[2], crb15[0],crb15[1],crb15[2]);
  line(crb15[0],crb15[1],crb15[2], crb16[0],crb16[1],crb16[2]);
  line(crb16[0],crb16[1],crb16[2], crb17[0],crb17[1],crb17[2]);
  line(crb17[0],crb17[1],crb17[2], crb18[0],crb18[1],crb18[2]);
  line(crb18[0],crb18[1],crb18[2], crb19[0],crb19[1],crb19[2]); 
  line(crb19[0],crb19[1],crb19[2], crb20[0],crb20[1],crb20[2]);
  line(crb20[0],crb20[1],crb20[2], crb1[0],crb1[1],crb1[2]); 
  
  // Joining Lines
  line(cr1[0],cr1[1],cr1[2], crb1[0],crb1[1],crb1[2]); // Back Bumper
  line(cr2[0],cr2[1],cr2[2], crb2[0],crb2[1],crb2[2]); 
  line(cr3[0],cr3[1],cr3[2], crb3[0],crb3[1],crb3[2]); 
  line(cr4[0],cr4[1],cr4[2], crb4[0],crb4[1],crb4[2]); 
  line(cr5[0],cr5[1],cr5[2], crb5[0],crb5[1],crb5[2]); 
  line(cr6[0],cr6[1],cr6[2], crb6[0],crb6[1],crb6[2]); 
  line(cr7[0],cr7[1],cr7[2], crb7[0],crb7[1],crb7[2]); 
  line(cr8[0],cr8[1],cr8[2], crb8[0],crb8[1],crb8[2]); 
  line(cr9[0],cr9[1],cr9[2], crb9[0],crb9[1],crb9[2]); 
  line(cr10[0],cr10[1],cr10[2], crb10[0],crb10[1],crb10[2]); 
  line(cr11[0],cr11[1],cr11[2], crb11[0],crb11[1],crb11[2]);
  line(cr12[0],cr12[1],cr12[2], crb12[0],crb12[1],crb12[2]); // Front Bumper
  stroke(50,50,50);                                          // Dark Grey
  line(cr13[0],cr13[1],cr13[2], crb13[0],crb13[1],crb13[2]); // Underside of Car
  line(cr14[0],cr14[1],cr14[2], crb14[0],crb14[1],crb14[2]); 
  line(cr15[0],cr15[1],cr15[2], crb15[0],crb15[1],crb15[2]); 
  line(cr16[0],cr16[1],cr16[2], crb16[0],crb16[1],crb16[2]); 
  line(cr17[0],cr17[1],cr17[2], crb17[0],crb17[1],crb17[2]); 
  line(cr18[0],cr18[1],cr18[2], crb18[0],crb18[1],crb18[2]); 
  line(cr19[0],cr19[1],cr19[2], crb19[0],crb19[1],crb19[2]); 
  line(cr20[0],cr20[1],cr20[2], crb20[0],crb20[1],crb20[2]);  

  // Lights
  stroke(255, 255, 0);
  line(crl1[0],crl1[1],crl1[2], crl2[0],crl2[1],crl2[2]); // Front Lights
  line(crl2[0],crl2[1],crl2[2], crl3[0],crl3[1],crl3[2]);  
  line(crl3[0],crl3[1],crl3[2], crl4[0],crl4[1],crl4[2]);  
  line(crl4[0],crl4[1],crl4[2], crl1[0],crl1[1],crl1[2]);  
  line(crl5[0],crl5[1],crl5[2], crl6[0],crl6[1],crl6[2]); 
  line(crl6[0],crl6[1],crl6[2], crl7[0],crl7[1],crl7[2]);  
  line(crl7[0],crl7[1],crl7[2], crl8[0],crl8[1],crl8[2]);  
  line(crl8[0],crl8[1],crl8[2], crl5[0],crl5[1],crl5[2]);  
  line(crl9[0],crl9[1],crl9[2], crl10[0],crl10[1],crl10[2]); // Back Lights
  line(crl10[0],crl10[1],crl10[2], crl11[0],crl11[1],crl11[2]); 
  line(crl11[0],crl11[1],crl11[2], crl12[0],crl12[1],crl12[2]); 
  line(crl12[0],crl12[1],crl12[2], crl9[0],crl9[1],crl9[2]); 
  line(crl13[0],crl13[1],crl13[2], crl14[0],crl14[1],crl14[2]);
  line(crl14[0],crl14[1],crl14[2], crl15[0],crl15[1],crl15[2]); 
  line(crl15[0],crl15[1],crl15[2], crl16[0],crl16[1],crl16[2]); 
  line(crl16[0],crl16[1],crl16[2], crl13[0],crl13[1],crl13[2]); 
  
  // Windscreens
  stroke(0, 255, 255);
  line(crw1[0],crw1[1],crw1[2], crw2[0],crw2[1],crw2[2]); // Front
  line(crw2[0],crw2[1],crw2[2], crw3[0],crw3[1],crw3[2]); 
  line(crw3[0],crw3[1],crw3[2], crw4[0],crw4[1],crw4[2]); 
  line(crw4[0],crw4[1],crw4[2], crw1[0],crw1[1],crw1[2]);  
  line(crw5[0],crw5[1],crw5[2], crw6[0],crw6[1],crw6[2]); // Back
  line(crw6[0],crw6[1],crw6[2], crw7[0],crw7[1],crw7[2]); 
  line(crw7[0],crw7[1],crw7[2], crw8[0],crw8[1],crw8[2]); 
  line(crw8[0],crw8[1],crw8[2], crw5[0],crw5[1],crw5[2]); 
  // Side Windows
  line(crw9[0],crw9[1],crw9[2], crw10[0],crw10[1],crw10[2]);    // Back right
  line(crw10[0],crw10[1],crw10[2], crw11[0],crw11[1],crw11[2]);
  line(crw11[0],crw11[1],crw11[2], crw12[0],crw12[1],crw12[2]); 
  line(crw12[0],crw12[1],crw12[2], crw9[0],crw9[1],crw9[2]); 
  line(crw13[0],crw13[1],crw13[2], crw14[0],crw14[1],crw14[2]); // Back left
  line(crw14[0],crw14[1],crw14[2], crw15[0],crw15[1],crw15[2]);
  line(crw15[0],crw15[1],crw15[2], crw16[0],crw16[1],crw16[2]);
  line(crw16[0],crw16[1],crw16[2], crw13[0],crw13[1],crw13[2]);

  line(crw17[0],crw17[1],crw17[2], crw18[0],crw18[1],crw18[2]); // Front right
  line(crw18[0],crw18[1],crw18[2], crw19[0],crw19[1],crw19[2]);
  line(crw19[0],crw19[1],crw19[2], crw20[0],crw20[1],crw20[2]);
  line(crw20[0],crw20[1],crw20[2], crw17[0],crw17[1],crw17[2]);
  line(crw21[0],crw21[1],crw21[2], crw22[0],crw22[1],crw22[2]); // Front left
  line(crw22[0],crw22[1],crw22[2], crw23[0],crw23[1],crw23[2]);
  line(crw23[0],crw23[1],crw23[2], crw24[0],crw24[1],crw24[2]);
  line(crw24[0],crw24[1],crw24[2], crw21[0],crw21[1],crw21[2]);
}
// Draw The Wheels
void drawWheel(int sides, float r, float h)
{
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