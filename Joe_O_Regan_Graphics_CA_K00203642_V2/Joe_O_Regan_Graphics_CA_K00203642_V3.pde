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
float[][] arrB = {{0.0,-100.0,10.0,1.0},{0.0,-103.0,10.0,1.0},{1.0,-103.0,10.0,1.0},{1.0,-117.0,10.0,1.0},{0.0,-117.0,10.0,1.0},
                {0.0,-120.0,10.0,1.0},{12.0,-120.0,10.0,1.0},{15.0,-117.0,10.0,1.0},{15.0,-113.0,10.0,1.0},
                {12.0,-110.0,10.0,1.0},{15.0,-107.0,10.0,1.0},{15.0,-103.0,10.0,1.0},{12.0,-100.0,10.0,1.0},
                {0.0,-100.0,10.0,1.0}};                                                                                  // Add start point, to go full circle
float[][] arrBhole1 = {{7.0,-103.0,10.0,1.0},{7.0,-108.0,10.0,1.0},{9.0,-108.0,10.0,1.0},{9.0,-103.0,10.0,1.0},{7.0,-103.0,10.0,1.0}};
float[][] arrBhole2 = {{7.0,-112.0,10.0,1.0},{7.0,-117.0,10.0,1.0},{9.0,-117.0,10.0,1.0},{9.0,-112.0,10.0,1.0},{7.0,-112.0,10.0,1.0}};

  //tb1 = transform_point(m, tb1);
  /*
  for (int i = 0; i < 12; i++){
     arrB[i] = transform_point(m, arrB[i]);
     if (i < 4) {
       arrBhole1[i] = transform_point(m, arrBhole1[i]);
       arrBhole2[i] = transform_point(m, arrBhole2[i]);
     } else continue;
  }
  */


float[] tb1 = {0.0,-100.0,10.0,1.0};  // Front
float[] tb2 = {0.0,-103.0,10.0,1.0};
float[] tb3 = {1.0,-103.0,10.0,1.0};
float[] tb4 = {1.0,-117.0,10.0,1.0};
float[] tb5 = {0.0,-117.0,10.0,1.0};
float[] tb6 = {0.0,-120.0,10.0,1.0};
float[] tb7 = {12.0,-120.0,10.0,1.0};
float[] tb8 = {15.0,-117.0,10.0,1.0};
float[] tb9 = {15.0,-113.0,10.0,1.0};
float[] tb10 = {12.0,-110.0,10.0,1.0};
float[] tb11 = {15.0,-107.0,10.0,1.0};
float[] tb12 = {15.0,-103.0,10.0,1.0};
float[] tb13 = {12.0,-100.0,10.0,1.0};
float[] tb14 = {7.0,-103.0,10.0,1.0}; // Bottom Centre
float[] tb15 = {7.0,-108.0,10.0,1.0};
float[] tb16 = {9.0,-108.0,10.0,1.0};
float[] tb17 = {9.0,-103.0,10.0,1.0}; // Top Centre
float[] tb18 = {7.0,-112.0,10.0,1.0};
float[] tb19 = {7.0,-117.0,10.0,1.0}; 
float[] tb20 = {9.0,-117.0,10.0,1.0}; 
float[] tb21 = {9.0,-112.0,10.0,1.0};

float[] txb1 = {0.0,-100.0,0.0,1.0};  // Back
float[] txb2 = {0.0,-103.0,0.0,1.0};
float[] txb3 = {1.0,-103.0,0.0,1.0};
float[] txb4 = {1.0,-117.0,0.0,1.0};
float[] txb5 = {0.0,-117.0,0.0,1.0};
float[] txb6 = {0.0,-120.0,0.0,1.0};
float[] txb7 = {12.0,-120.0,0.0,1.0};
float[] txb8 = {15.0,-117.0,0.0,1.0};
float[] txb9 = {15.0,-113.0,0.0,1.0};
float[] txb10 = {12.0,-110.0,0.0,1.0};
float[] txb11 = {15.0,-107.0,0.0,1.0};
float[] txb12 = {15.0,-103.0,0.0,1.0};
float[] txb13 = {12.0,-100.0,0.0,1.0};
float[] txb14 = {7.0,-103.0,0.0,1.0}; // Bottom Centre
float[] txb15 = {7.0,-108.0,0.0,1.0};
float[] txb16 = {9.0,-108.0,0.0,1.0};
float[] txb17 = {9.0,-103.0,0.0,1.0};
float[] txb18 = {7.0,-112.0,0.0,1.0}; // Top Centre
float[] txb19 = {7.0,-117.0,0.0,1.0}; 
float[] txb20 = {9.0,-117.0,0.0,1.0}; 
float[] txb21 = {9.0,-112.0,0.0,1.0};

// Points for I
float[] ti1 = {16.0,-100.0,10.0,1.0};
float[] ti2 = {16.0,-103.0,10.0,1.0};
float[] ti3 = {17.0,-103.0,10.0,1.0};
float[] ti4 = {17.0,-117.0,10.0,1.0};
float[] ti5 = {16.0,-117.0,10.0,1.0};
float[] ti6 = {16.0,-120.0,10.0,1.0};
float[] ti7 = {24.0,-120.0,10.0,1.0};
float[] ti8 = {24.0,-117.0,10.0,1.0};
float[] ti9 = {23.0,-117.0,10.0,1.0};
float[] ti10 = {23.0,-103.0,10.0,1.0};
float[] ti11 = {24.0,-103.0,10.0,1.0};
float[] ti12 = {24.0,0.-100,10.0,1.0};

float[] txi1 = {16.0,-100.0,0.0,1.0};
float[] txi2 = {16.0,-103.0,0.0,1.0};
float[] txi3 = {17.0,-103.0,0.0,1.0};
float[] txi4 = {17.0,-117.0,0.0,1.0};
float[] txi5 = {16.0,-117.0,0.0,1.0};
float[] txi6 = {16.0,-120.0,0.0,1.0};
float[] txi7 = {24.0,-120.0,0.0,1.0};
float[] txi8 = {24.0,-117.0,0.0,1.0};
float[] txi9 = {23.0,-117.0,0.0,1.0};
float[] txi10 = {23.0,-103.0,0.0,1.0};
float[] txi11 = {24.0,-103.0,0.0,1.0};
float[] txi12 = {24.0,0.-100,0.0,1.0};

// Points for G
float[] tg1 = {28.0,-100.0,10.0,1.0};
float[] tg2 = {25.0,-103.0,10.0,1.0};
float[] tg3 = {25.0,-117.0,10.0,1.0};
float[] tg4 = {28.0,-120.0,10.0,1.0};
float[] tg5 = {39.0,-120.0,10.0,1.0};
float[] tg6 = {39.0,-111.0,10.0,1.0};
float[] tg7 = {33.0,-111.0,10.0,1.0};
float[] tg8 = {33.0,-115.0,10.0,1.0};
float[] tg9 = {31.0,-115.0,10.0,1.0};
float[] tg10 = {31.0,-105.0,10.0,1.0};
float[] tg11 = {33.0,-105.0,10.0,1.0};
float[] tg12 = {33.0,-109.0,10.0,1.0};
float[] tg13 = {40.0,-109.0,10.0,1.0};
float[] tg14 = {40.0,-106.0,10.0,1.0};
float[] tg15 = {39.0,-106.0,10.0,1.0};
float[] tg16 = {39.0,-103.0,10.0,1.0};
float[] tg17 = {36.0,-100.0,10.0,1.0};

float[] txg1 = {28.0,-100.0,0.0,1.0};
float[] txg2 = {25.0,-103.0,0.0,1.0};
float[] txg3 = {25.0,-117.0,0.0,1.0};
float[] txg4 = {28.0,-120.0,0.0,1.0};
float[] txg5 = {39.0,-120.0,0.0,1.0};
float[] txg6 = {39.0,-111.0,0.0,1.0};
float[] txg7 = {33.0,-111.0,0.0,1.0};
float[] txg8 = {33.0,-115.0,0.0,1.0};
float[] txg9 = {31.0,-115.0,0.0,1.0};
float[] txg10 = {31.0,-105.0,0.0,1.0};
float[] txg11 = {33.0,-105.0,0.0,1.0};
float[] txg12 = {33.0,-109.0,0.0,1.0};
float[] txg13 = {40.0,-109.0,0.0,1.0};
float[] txg14 = {40.0,-106.0,0.0,1.0};
float[] txg15 = {39.0,-106.0,0.0,1.0};
float[] txg16 = {39.0,-103.0,0.0,1.0};
float[] txg17 = {36.0,-100.0,0.0,1.0};

// Points for F
float[] tf1 = {40.0,-100.0,10.0,1.0};
float[] tf2 = {40.0,-103.0,10.0,1.0};
float[] tf3 = {41.0,-103.0,10.0,1.0};
float[] tf4 = {41.0,-117.0,10.0,1.0};
float[] tf5 = {40.0,-117.0,10.0,1.0};
float[] tf6 = {40.0,-120.0,10.0,1.0};
float[] tf7 = {54.0,-120.0,10.0,1.0};
float[] tf8 = {54.0,-116.0,10.0,1.0};
float[] tf9 = {50.0,-116.0,10.0,1.0};
float[] tf10 = {50.0,-115.0,10.0,1.0};
float[] tf11 = {47.0,-115.0,10.0,1.0};
float[] tf12 = {47.0,-112.0,10.0,1.0};
float[] tf13 = {50.0,-112.0,10.0,1.0};
float[] tf14 = {50.0,-108.0,10.0,1.0};
float[] tf15 = {47.0,-108.0,10.0,1.0};
float[] tf16 = {47.0,-103.0,10.0,1.0};
float[] tf17 = {48.0,-103.0,10.0,1.0};
float[] tf18 = {48.0,-100.0,10.0,1.0};

float[] txf1 = {40.0,-100.0,0.0,1.0};
float[] txf2 = {40.0,-103.0,0.0,1.0};
float[] txf3 = {41.0,-103.0,0.0,1.0};
float[] txf4 = {41.0,-117.0,0.0,1.0};
float[] txf5 = {40.0,-117.0,0.0,1.0};
float[] txf6 = {40.0,-120.0,0.0,1.0};
float[] txf7 = {54.0,-120.0,0.0,1.0};
float[] txf8 = {54.0,-116.0,0.0,1.0};
float[] txf9 = {50.0,-116.0,0.0,1.0};
float[] txf10 = {50.0,-115.0,0.0,1.0};
float[] txf11 = {47.0,-115.0,0.0,1.0};
float[] txf12 = {47.0,-112.0,0.0,1.0};
float[] txf13 = {50.0,-112.0,0.0,1.0};
float[] txf14 = {50.0,-108.0,0.0,1.0};
float[] txf15 = {47.0,-108.0,0.0,1.0};
float[] txf16 = {47.0,-103.0,0.0,1.0};
float[] txf17 = {48.0,-103.0,0.0,1.0};
float[] txf18 = {48.0,-100.0,0.0,1.0};

// Points for O
float[] to1 = {58.0,-100.0,10.0,1.0};  // Bottom left Front
float[] to2 = {55.0,-103.0,10.0,1.0};
float[] to3 = {55.0,-117.0,10.0,1.0};
float[] to4 = {58.0,-120.0,10.0,1.0};
float[] to5 = {66.0,-120.0,10.0,1.0};
float[] to6 = {69.0,-117.0,10.0,1.0};
float[] to7 = {69.0,-103.0,10.0,1.0};
float[] to8 = {66.0,-100.0,10.0,1.0};
float[] to9 = {61.0,-105.0,10.0,1.0};  // Centre
float[] to10 = {61.0,-115.0,10.0,1.0};
float[] to11 = {63.0,-115.0,10.0,1.0};
float[] to12 = {63.0,-105.0,10.0,1.0};

float[] txo1 = {58.0,-100.0,0.0,1.0};  // Bottom left Back
float[] txo2 = {55.0,-103.0,0.0,1.0};
float[] txo3 = {55.0,-117.0,0.0,1.0};
float[] txo4 = {58.0,-120.0,0.0,1.0};
float[] txo5 = {66.0,-120.0,0.0,1.0};
float[] txo6 = {69.0,-117.0,0.0,1.0};
float[] txo7 = {69.0,-103.0,0.0,1.0};
float[] txo8 = {66.0,-100.0,0.0,1.0};
float[] txo9 = {61.0,-105.0,0.0,1.0};  // Centre
float[] txo10 = {61.0,-115.0,0.0,1.0};
float[] txo11 = {63.0,-115.0,0.0,1.0};
float[] txo12 = {63.0,-105.0,0.0,1.0};

// Points for T
float[] tt1 = {87.0,-100.0,10.0,1.0};
float[] tt2 = {87.0,-103.0,10.0,1.0};
float[] tt3 = {88.0,-103.0,10.0,1.0};
float[] tt4 = {88.0,-117.0,10.0,1.0};
float[] tt5 = {83.0,-117.0,10.0,1.0};
float[] tt6 = {83.0,-120.0,10.0,1.0};
float[] tt7 = {98.0,-120.0,10.0,1.0};
float[] tt8 = {98.0,-117.0,10.0,1.0};
float[] tt9 = {94.0,-117.0,10.0,1.0};
float[] tt10 = {94.0,-103.0,10.0,1.0};
float[] tt11 = {95.0,-103.0,10.0,1.0};
float[] tt12 = {95.0,0.-100,10.0,1.0};

float[] txt1 = {87.0,-100.0,0.0,1.0};
float[] txt2 = {87.0,-103.0,0.0,1.0};
float[] txt3 = {88.0,-103.0,0.0,1.0};
float[] txt4 = {88.0,-117.0,0.0,1.0};
float[] txt5 = {83.0,-117.0,0.0,1.0};
float[] txt6 = {83.0,-120.0,0.0,1.0};
float[] txt7 = {98.0,-120.0,0.0,1.0};
float[] txt8 = {98.0,-117.0,0.0,1.0};
float[] txt9 = {94.0,-117.0,0.0,1.0};
float[] txt10 = {94.0,-103.0,0.0,1.0};
float[] txt11 = {95.0,-103.0,0.0,1.0};
float[] txt12 = {95.0,0.-100,0.0,1.0};

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
    
  /*
  tb1 = transform_point(m, tb1);
  tb2 = transform_point(m, tb2);
  tb3 = transform_point(m, tb3);
  tb4 = transform_point(m, tb4);  
  tb5 = transform_point(m, tb5);  
  tb6 = transform_point(m, tb6);  
  tb7 = transform_point(m, tb7);  
  tb8 = transform_point(m, tb8);  
  tb9 = transform_point(m, tb9);  
  tb10 = transform_point(m, tb10);  
  tb11 = transform_point(m, tb11);  
  tb12 = transform_point(m, tb12);  
  tb13 = transform_point(m, tb13);
  tb14 = transform_point(m, tb14);   
  tb15 = transform_point(m, tb15);   
  tb16 = transform_point(m, tb16);   
  tb17 = transform_point(m, tb17);   
  tb18 = transform_point(m, tb18);   
  tb19 = transform_point(m, tb19);   
  tb20 = transform_point(m, tb20);   
  tb21 = transform_point(m, tb21);    
  
  txb1 = transform_point(m, txb1);
  txb2 = transform_point(m, txb2);
  txb3 = transform_point(m, txb3);
  txb4 = transform_point(m, txb4);  
  txb5 = transform_point(m, txb5);  
  txb6 = transform_point(m, txb6);  
  txb7 = transform_point(m, txb7);  
  txb8 = transform_point(m, txb8);  
  txb9 = transform_point(m, txb9);  
  txb10 = transform_point(m, txb10);  
  txb11 = transform_point(m, txb11);  
  txb12 = transform_point(m, txb12);  
  txb13 = transform_point(m, txb13);  
  txb14 = transform_point(m, txb14);   
  txb15 = transform_point(m, txb15);   
  txb16 = transform_point(m, txb16);   
  txb17 = transform_point(m, txb17);   
  txb18 = transform_point(m, txb18);   
  txb19 = transform_point(m, txb19);   
  txb20 = transform_point(m, txb20);   
  txb21 = transform_point(m, txb21); 
  */
  
  // I Scale
  ti1 = transform_point(m, ti1);
  ti2 = transform_point(m, ti2);
  ti3 = transform_point(m, ti3);
  ti4 = transform_point(m, ti4);  
  ti5 = transform_point(m, ti5);  
  ti6 = transform_point(m, ti6);  
  ti7 = transform_point(m, ti7);  
  ti8 = transform_point(m, ti8);  
  ti9 = transform_point(m, ti9);  
  ti10 = transform_point(m, ti10);  
  ti11 = transform_point(m, ti11);  
  ti12 = transform_point(m, ti12);  
  
  txi1 = transform_point(m, txi1);
  txi2 = transform_point(m, txi2);
  txi3 = transform_point(m, txi3);
  txi4 = transform_point(m, txi4);  
  txi5 = transform_point(m, txi5);  
  txi6 = transform_point(m, txi6);  
  txi7 = transform_point(m, txi7);  
  txi8 = transform_point(m, txi8);  
  txi9 = transform_point(m, txi9);  
  txi10 = transform_point(m, txi10);  
  txi11 = transform_point(m, txi11);  
  txi12 = transform_point(m, txi12);  
  
  // G Scale
  tg1 = transform_point(m, tg1);
  tg2 = transform_point(m, tg2);
  tg3 = transform_point(m, tg3);
  tg4 = transform_point(m, tg4);  
  tg5 = transform_point(m, tg5);  
  tg6 = transform_point(m, tg6);  
  tg7 = transform_point(m, tg7);  
  tg8 = transform_point(m, tg8);  
  tg9 = transform_point(m, tg9);  
  tg10 = transform_point(m, tg10);  
  tg11 = transform_point(m, tg11);  
  tg12 = transform_point(m, tg12);   
  tg13 = transform_point(m, tg13);  
  tg14 = transform_point(m, tg14);   
  tg15 = transform_point(m, tg15);   
  tg16 = transform_point(m, tg16);   
  tg17 = transform_point(m, tg17);  
  
  txg1 = transform_point(m, txg1);
  txg2 = transform_point(m, txg2);
  txg3 = transform_point(m, txg3);
  txg4 = transform_point(m, txg4);  
  txg5 = transform_point(m, txg5);  
  txg6 = transform_point(m, txg6);  
  txg7 = transform_point(m, txg7);  
  txg8 = transform_point(m, txg8);  
  txg9 = transform_point(m, txg9);  
  txg10 = transform_point(m, txg10);  
  txg11 = transform_point(m, txg11);  
  txg12 = transform_point(m, txg12);   
  txg13 = transform_point(m, txg13);  
  txg14 = transform_point(m, txg14);   
  txg15 = transform_point(m, txg15);   
  txg16 = transform_point(m, txg16);   
  txg17 = transform_point(m, txg17);  
  
  // Move F left and right  
  tf1 = transform_point(n, tf1);
  tf2 = transform_point(n, tf2);
  tf3 = transform_point(n, tf3);
  tf4 = transform_point(n, tf4);  
  tf5 = transform_point(n, tf5);  
  tf6 = transform_point(n, tf6);  
  tf7 = transform_point(n, tf7);  
  tf8 = transform_point(n, tf8);  
  tf9 = transform_point(n, tf9);  
  tf10 = transform_point(n, tf10);  
  tf11 = transform_point(n, tf11);  
  tf12 = transform_point(n, tf12);   
  tf13 = transform_point(n, tf13);  
  tf14 = transform_point(n, tf14);   
  tf15 = transform_point(n, tf15);   
  tf16 = transform_point(n, tf16);   
  tf17 = transform_point(n, tf17);   
  tf18 = transform_point(n, tf18);  
  
  txf1 = transform_point(n, txf1);
  txf2 = transform_point(n, txf2);
  txf3 = transform_point(n, txf3);
  txf4 = transform_point(n, txf4);  
  txf5 = transform_point(n, txf5);  
  txf6 = transform_point(n, txf6);  
  txf7 = transform_point(n, txf7);  
  txf8 = transform_point(n, txf8);  
  txf9 = transform_point(n, txf9);  
  txf10 = transform_point(n, txf10);  
  txf11 = transform_point(n, txf11);  
  txf12 = transform_point(n, txf12);   
  txf13 = transform_point(n, txf13);  
  txf14 = transform_point(n, txf14);   
  txf15 = transform_point(n, txf15);   
  txf16 = transform_point(n, txf16);   
  txf17 = transform_point(n, txf17);   
  txf18 = transform_point(n, txf18);  
  
  // Move O left and right
  to1 = transform_point(n, to1);
  to2 = transform_point(n, to2);
  to3 = transform_point(n, to3);
  to4 = transform_point(n, to4);
  to5 = transform_point(n, to5);
  to6 = transform_point(n, to6);
  to7 = transform_point(n, to7);
  to8 = transform_point(n, to8);
  to9 = transform_point(n, to9);
  to10 = transform_point(n, to10);
  to11 = transform_point(n, to11);
  to12 = transform_point(n, to12);
  
  txo1 = transform_point(n, txo1);
  txo2 = transform_point(n, txo2);
  txo3 = transform_point(n, txo3);
  txo4 = transform_point(n, txo4);
  txo5 = transform_point(n, txo5);
  txo6 = transform_point(n, txo6);
  txo7 = transform_point(n, txo7);
  txo8 = transform_point(n, txo8);
  txo9 = transform_point(n, txo9);
  txo10 = transform_point(n, txo10);
  txo11 = transform_point(n, txo11);
  txo12 = transform_point(n, txo12);
  
  // Move T left and right
  tt1 = transform_point(n, tt1);
  tt2 = transform_point(n, tt2);
  tt3 = transform_point(n, tt3);
  tt4 = transform_point(n, tt4);
  tt5 = transform_point(n, tt5);
  tt6 = transform_point(n, tt6);
  tt7 = transform_point(n, tt7);
  tt8 = transform_point(n, tt8);
  tt9 = transform_point(n, tt9);
  tt10 = transform_point(n, tt10);
  tt11 = transform_point(n, tt11);
  tt12 = transform_point(n, tt12);
  
  txt1 = transform_point(n, txt1);
  txt2 = transform_point(n, txt2);
  txt3 = transform_point(n, txt3);
  txt4 = transform_point(n, txt4);
  txt5 = transform_point(n, txt5);
  txt6 = transform_point(n, txt6);
  txt7 = transform_point(n, txt7);
  txt8 = transform_point(n, txt8);
  txt9 = transform_point(n, txt9);
  txt10 = transform_point(n, txt10);
  txt11 = transform_point(n, txt11);
  txt12 = transform_point(n, txt12);
  
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
void drawB() {                                              // Draw The Letter 'B'
  stroke(0, 0, 255);                                        // Blue
  
  for (int i = 0; i < 13; i++) {
      line(arrB[i][0],arrB[i][1],arrB[i][2], arrB[i+1][0],arrB[i+1][1],arrB[i+1][2]);                 // Draw B Front outline
      line(arrB[i][0],arrB[i][1],arrB[i][2] - 10.0f, arrB[i+1][0],arrB[i+1][1],arrB[i+1][2] - 10.0f); // Draw B Back outline
  stroke(50, 50, 255);                                      // Light blue
      line(arrB[i][0],arrB[i][1],arrB[i][2], arrB[i][0],arrB[i][1],arrB[i][2] - 10);                  // Draw B Sides
  //stroke(0, 0, 255);                                        // Blue
      
      if (i < 4) {
  //stroke(50, 50, 255);                                      // Light blue
        line(arrBhole1[i][0],arrBhole1[i][1],arrBhole1[i][2], arrBhole1[i][0],arrBhole1[i][1],arrBhole1[i][2] - 10);                   // Draw B hole 1 Side
        line(arrBhole2[i][0],arrBhole2[i][1],arrBhole2[i][2], arrBhole2[i][0],arrBhole2[i][1],arrBhole2[i][2] - 10);                   // Draw B hole 2 Side
  stroke(0, 0, 255);                                        // Blue
        line(arrBhole1[i][0],arrBhole1[i][1],arrBhole1[i][2], arrBhole1[i+1][0],arrBhole1[i+1][1],arrBhole1[i+1][2]);                  // Draw B hole 1 front
        line(arrBhole2[i][0],arrBhole2[i][1],arrBhole2[i][2], arrBhole2[i+1][0],arrBhole2[i+1][1],arrBhole2[i+1][2]);                  // Draw B hole 2 front
        line(arrBhole1[i][0],arrBhole1[i][1],arrBhole1[i][2] - 10.0f, arrBhole1[i+1][0],arrBhole1[i+1][1],arrBhole1[i+1][2] - 10.0f);  // Draw B hole 1 back
        line(arrBhole2[i][0],arrBhole2[i][1],arrBhole2[i][2] - 10.0f, arrBhole2[i+1][0],arrBhole2[i+1][1],arrBhole2[i+1][2] - 10.0f);  // Draw B hole 2 back
      } 
      else continue;
  }
      //line(arrB[11][0],arrB[11][1],arrB[11][2], arrB[0][0],arrB[0][1],arrB[0][2]);        // Draw B outline
      //line(arrBhole1[3][0],arrBhole1[3][1],arrBhole1[3][2], arrBhole1[0][0],arrBhole1[0][1],arrBhole1[0][2]);  // Draw B hole
      //line(arrBhole2[3][0],arrBhole2[3][1],arrBhole2[3][2], arrBhole2[0][0],arrBhole2[0][1],arrBhole2[0][2]);  // Draw B hole
  
/*  
  line(tb1[0],tb1[1],tb1[2], tb2[0],tb2[1],tb2[2]);
  line(tb2[0],tb2[1],tb2[2], tb3[0],tb3[1],tb3[2]);
  line(tb3[0],tb3[1],tb3[2], tb4[0],tb4[1],tb4[2]);
  line(tb4[0],tb4[1],tb4[2], tb5[0],tb5[1],tb5[2]);
  line(tb5[0],tb5[1],tb5[2], tb6[0],tb6[1],tb6[2]);
  line(tb6[0],tb6[1],tb6[2], tb7[0],tb7[1],tb7[2]);
  line(tb7[0],tb7[1],tb7[2], tb8[0],tb8[1],tb8[2]);
  line(tb8[0],tb8[1],tb8[2], tb9[0],tb9[1],tb9[2]);
  line(tb9[0],tb9[1],tb9[2], tb10[0],tb10[1],tb10[2]);
  line(tb10[0],tb10[1],tb10[2], tb11[0],tb11[1],tb11[2]);
  line(tb11[0],tb11[1],tb11[2], tb12[0],tb12[1],tb12[2]);
  line(tb12[0],tb12[1],tb12[2], tb13[0],tb13[1],tb13[2]);
  line(tb13[0],tb13[1],tb13[2], tb1[0],tb1[1],tb1[2]);
  
  line(tb14[0],tb14[1],tb14[2], tb15[0],tb15[1],tb15[2]);
  line(tb15[0],tb15[1],tb15[2], tb16[0],tb16[1],tb16[2]);
  line(tb16[0],tb16[1],tb16[2], tb17[0],tb17[1],tb17[2]);
  line(tb17[0],tb17[1],tb17[2], tb14[0],tb14[1],tb14[2]);  
  line(tb18[0],tb18[1],tb18[2], tb19[0],tb19[1],tb19[2]);
  line(tb19[0],tb19[1],tb19[2], tb20[0],tb20[1],tb20[2]);
  line(tb20[0],tb20[1],tb20[2], tb21[0],tb21[1],tb21[2]);
  line(tb21[0],tb21[1],tb21[2], tb18[0],tb18[1],tb18[2]);
  
  stroke(50, 50, 255);                                      // Light blue
  line(txb1[0],txb1[1],txb1[2], txb2[0],txb2[1],txb2[2]);
  line(txb2[0],txb2[1],txb2[2], txb3[0],txb3[1],txb3[2]);
  line(txb3[0],txb3[1],txb3[2], txb4[0],txb4[1],txb4[2]);
  line(txb4[0],txb4[1],txb4[2], txb5[0],txb5[1],txb5[2]);
  line(txb5[0],txb5[1],txb5[2], txb6[0],txb6[1],txb6[2]);
  line(txb6[0],txb6[1],txb6[2], txb7[0],txb7[1],txb7[2]);
  line(txb7[0],txb7[1],txb7[2], txb8[0],txb8[1],txb8[2]);
  line(txb8[0],txb8[1],txb8[2], txb9[0],txb9[1],txb9[2]);
  line(txb9[0],txb9[1],txb9[2], txb10[0],txb10[1],txb10[2]);
  line(txb10[0],txb10[1],txb10[2], txb11[0],txb11[1],txb11[2]);
  line(txb11[0],txb11[1],txb11[2], txb12[0],txb12[1],txb12[2]);
  line(txb12[0],txb12[1],txb12[2], txb13[0],txb13[1],txb13[2]);
  line(txb13[0],txb13[1],txb13[2], txb1[0],txb1[1],txb1[2]);
  
  line(txb14[0],txb14[1],txb14[2], txb15[0],txb15[1],txb15[2]);
  line(txb15[0],txb15[1],txb15[2], txb16[0],txb16[1],txb16[2]);
  line(txb16[0],txb16[1],txb16[2], txb17[0],txb17[1],txb17[2]);
  line(txb17[0],txb17[1],txb17[2], txb14[0],txb14[1],txb14[2]);
  
  line(txb18[0],txb18[1],txb18[2], txb19[0],txb19[1],txb19[2]);
  line(txb19[0],txb19[1],txb19[2], txb20[0],txb20[1],txb20[2]);
  line(txb20[0],txb20[1],txb20[2], txb21[0],txb21[1],txb21[2]);
  line(txb21[0],txb21[1],txb21[2], txb18[0],txb18[1],txb18[2]);
  
  line(tb1[0],tb1[1],tb1[2], txb1[0],txb1[1],txb1[2]);
  line(tb2[0],tb2[1],tb2[2], txb2[0],txb2[1],txb2[2]);
  line(tb3[0],tb3[1],tb3[2], txb3[0],txb3[1],txb3[2]);
  line(tb4[0],tb4[1],tb4[2], txb4[0],txb4[1],txb4[2]);
  line(tb5[0],tb5[1],tb5[2], txb5[0],txb5[1],txb5[2]);
  line(tb6[0],tb6[1],tb6[2], txb6[0],txb6[1],txb6[2]);
  line(tb7[0],tb7[1],tb7[2], txb7[0],txb7[1],txb7[2]);
  line(tb8[0],tb8[1],tb8[2], txb8[0],txb8[1],txb8[2]);
  line(tb9[0],tb9[1],tb9[2], txb9[0],txb9[1],txb9[2]);
  line(tb10[0],tb10[1],tb10[2], txb10[0],txb10[1],txb10[2]);
  line(tb11[0],tb11[1],tb11[2], txb11[0],txb11[1],txb11[2]);
  line(tb12[0],tb12[1],tb12[2], txb12[0],txb12[1],txb12[2]);
  line(tb13[0],tb13[1],tb13[2], txb13[0],txb13[1],txb13[2]);
  
  line(tb14[0],tb14[1],tb14[2], txb14[0],txb14[1],txb14[2]);
  line(tb15[0],tb15[1],tb15[2], txb15[0],txb15[1],txb15[2]);
  line(tb16[0],tb16[1],tb16[2], txb16[0],txb16[1],txb16[2]);
  line(tb17[0],tb17[1],tb17[2], txb17[0],txb17[1],txb17[2]);
  
  line(tb18[0],tb18[1],tb18[2], txb18[0],txb18[1],txb18[2]);
  line(tb19[0],tb19[1],tb19[2], txb19[0],txb19[1],txb19[2]);
  line(tb20[0],tb20[1],tb20[2], txb20[0],txb20[1],txb20[2]);
  line(tb21[0],tb21[1],tb21[2], txb21[0],txb21[1],txb21[2]);
  */
}

void drawI() {                                             // Draw The Letter 'I'
  stroke(0, 0, 255);                                       // Blue
  line(ti1[0],ti1[1],ti1[2], ti2[0],ti2[1],ti2[2]);
  line(ti2[0],ti2[1],ti2[2], ti3[0],ti3[1],ti3[2]);
  line(ti3[0],ti3[1],ti3[2], ti4[0],ti4[1],ti4[2]);
  line(ti4[0],ti4[1],ti4[2], ti5[0],ti5[1],ti5[2]);
  line(ti5[0],ti5[1],ti5[2], ti6[0],ti6[1],ti6[2]);
  line(ti6[0],ti6[1],ti6[2], ti7[0],ti7[1],ti7[2]);
  line(ti7[0],ti7[1],ti7[2], ti8[0],ti8[1],ti8[2]);
  line(ti8[0],ti8[1],ti8[2], ti9[0],ti9[1],ti9[2]);
  line(ti9[0],ti9[1],ti9[2], ti10[0],ti10[1],ti10[2]);
  line(ti10[0],ti10[1],ti10[2], ti11[0],ti11[1],ti11[2]);
  line(ti11[0],ti11[1],ti11[2], ti12[0],ti12[1],ti12[2]);
  line(ti12[0],ti12[1],ti12[2], ti1[0],ti1[1],ti1[2]);
  
  stroke(50, 50, 255);                                      // Light blue
  line(txi1[0],txi1[1],txi1[2], txi2[0],txi2[1],txi2[2]);
  line(txi2[0],txi2[1],txi2[2], txi3[0],txi3[1],txi3[2]);
  line(txi3[0],txi3[1],txi3[2], txi4[0],txi4[1],txi4[2]);
  line(txi4[0],txi4[1],txi4[2], txi5[0],txi5[1],txi5[2]);
  line(txi5[0],txi5[1],txi5[2], txi6[0],txi6[1],txi6[2]);
  line(txi6[0],txi6[1],txi6[2], txi7[0],txi7[1],txi7[2]);
  line(txi7[0],txi7[1],txi7[2], txi8[0],txi8[1],txi8[2]);
  line(txi8[0],txi8[1],txi8[2], txi9[0],txi9[1],txi9[2]);
  line(txi9[0],txi9[1],txi9[2], txi10[0],txi10[1],txi10[2]);
  line(txi10[0],txi10[1],txi10[2], txi11[0],txi11[1],txi11[2]);
  line(txi11[0],txi11[1],txi11[2], txi12[0],txi12[1],txi12[2]);
  line(txi12[0],txi12[1],txi12[2], txi1[0],txi1[1],txi1[2]);
  
  line(txi1[0],txi1[1],txi1[2], ti1[0],ti1[1],ti1[2]);
  line(txi2[0],txi2[1],txi2[2], ti2[0],ti2[1],ti2[2]);
  line(txi3[0],txi3[1],txi3[2], ti3[0],ti3[1],ti3[2]);
  line(txi4[0],txi4[1],txi4[2], ti4[0],ti4[1],ti4[2]);
  line(txi5[0],txi5[1],txi5[2], ti5[0],ti5[1],ti5[2]);
  line(txi6[0],txi6[1],txi6[2], ti6[0],ti6[1],ti6[2]);
  line(txi7[0],txi7[1],txi7[2], ti7[0],ti7[1],ti7[2]);
  line(txi8[0],txi8[1],txi8[2], ti8[0],ti8[1],ti8[2]);
  line(txi9[0],txi9[1],txi9[2], ti9[0],ti9[1],ti9[2]);
  line(txi10[0],txi10[1],txi10[2], ti10[0],ti10[1],txi10[2]);
  line(txi11[0],txi11[1],txi11[2], ti11[0],ti11[1],ti11[2]);
  line(txi12[0],txi12[1],txi12[2], ti12[0],ti12[1],ti12[2]);
}

void drawG() {                                             // Draw The Letter 'G'
  stroke(0, 0, 255);                                       // Blue
  line(tg1[0],tg1[1],tg1[2], tg2[0],tg2[1],tg2[2]);
  line(tg2[0],tg2[1],tg2[2], tg3[0],tg3[1],tg3[2]);
  line(tg3[0],tg3[1],tg3[2], tg4[0],tg4[1],tg4[2]);
  line(tg4[0],tg4[1],tg4[2], tg5[0],tg5[1],tg5[2]);
  line(tg5[0],tg5[1],tg5[2], tg6[0],tg6[1],tg6[2]);
  line(tg6[0],tg6[1],tg6[2], tg7[0],tg7[1],tg7[2]);
  line(tg7[0],tg7[1],tg7[2], tg8[0],tg8[1],tg8[2]);
  line(tg8[0],tg8[1],tg8[2], tg9[0],tg9[1],tg9[2]);
  line(tg9[0],tg9[1],tg9[2], tg10[0],tg10[1],tg10[2]);
  line(tg10[0],tg10[1],tg10[2], tg11[0],tg11[1],tg11[2]);
  line(tg11[0],tg11[1],tg11[2], tg12[0],tg12[1],tg12[2]);
  line(tg12[0],tg12[1],tg12[2], tg13[0],tg13[1],tg13[2]);
  line(tg13[0],tg13[1],tg13[2], tg14[0],tg14[1],tg14[2]);
  line(tg14[0],tg14[1],tg14[2], tg15[0],tg15[1],tg15[2]);
  line(tg15[0],tg15[1],tg15[2], tg16[0],tg16[1],tg16[2]);
  line(tg16[0],tg16[1],tg16[2], tg17[0],tg17[1],tg17[2]);
  line(tg17[0],tg17[1],tg17[2], tg1[0],tg1[1],tg1[2]);
  
  stroke(50, 50, 255);                                       // Light Blue
  line(txg1[0],txg1[1],txg1[2], txg2[0],txg2[1],txg2[2]);
  line(txg2[0],txg2[1],txg2[2], txg3[0],txg3[1],txg3[2]);
  line(txg3[0],txg3[1],txg3[2], txg4[0],txg4[1],txg4[2]);
  line(txg4[0],txg4[1],txg4[2], txg5[0],txg5[1],txg5[2]);
  line(txg5[0],txg5[1],txg5[2], txg6[0],txg6[1],txg6[2]);
  line(txg6[0],txg6[1],txg6[2], txg7[0],txg7[1],txg7[2]);
  line(txg7[0],txg7[1],txg7[2], txg8[0],txg8[1],txg8[2]);
  line(txg8[0],txg8[1],txg8[2], txg9[0],txg9[1],txg9[2]);
  line(txg9[0],txg9[1],txg9[2], txg10[0],txg10[1],txg10[2]);
  line(txg10[0],txg10[1],txg10[2], txg11[0],txg11[1],txg11[2]);
  line(txg11[0],txg11[1],txg11[2], txg12[0],txg12[1],txg12[2]);
  line(txg12[0],txg12[1],txg12[2], txg13[0],txg13[1],txg13[2]);
  line(txg13[0],txg13[1],txg13[2], txg14[0],txg14[1],txg14[2]);
  line(txg14[0],txg14[1],txg14[2], txg15[0],txg15[1],txg15[2]);
  line(txg15[0],txg15[1],txg15[2], txg16[0],txg16[1],txg16[2]);
  line(txg16[0],txg16[1],txg16[2], txg17[0],txg17[1],txg17[2]);
  line(txg17[0],txg17[1],txg17[2], txg1[0],txg1[1],txg1[2]);
  
  line(tg1[0],tg1[1],tg1[2], txg1[0],txg1[1],txg1[2]);
  line(tg2[0],tg2[1],tg2[2], txg2[0],txg2[1],txg2[2]);
  line(tg3[0],tg3[1],tg3[2], txg3[0],txg3[1],txg3[2]);
  line(tg4[0],tg4[1],tg4[2], txg4[0],txg4[1],txg4[2]);
  line(tg5[0],tg5[1],tg5[2], txg5[0],txg5[1],txg5[2]);
  line(tg6[0],tg6[1],tg6[2], txg6[0],txg6[1],txg6[2]);
  line(tg7[0],tg7[1],tg7[2], txg7[0],txg7[1],txg7[2]);
  line(tg8[0],tg8[1],tg8[2], txg8[0],txg8[1],txg8[2]);
  line(tg9[0],tg9[1],tg9[2], txg9[0],txg9[1],txg9[2]);
  line(tg10[0],tg10[1],tg10[2], txg10[0],txg10[1],txg10[2]);
  line(tg11[0],tg11[1],tg11[2], txg11[0],txg11[1],txg11[2]);
  line(tg12[0],tg12[1],tg12[2], txg12[0],txg12[1],txg12[2]);
  line(tg13[0],tg13[1],tg13[2], txg13[0],txg13[1],txg13[2]);
  line(tg14[0],tg14[1],tg14[2], txg14[0],txg14[1],txg14[2]);
  line(tg15[0],tg15[1],tg15[2], txg15[0],txg15[1],txg15[2]);
  line(tg16[0],tg16[1],tg16[2], txg16[0],txg16[1],txg16[2]);
  line(tg17[0],tg17[1],tg17[2], txg17[0],txg17[1],txg17[2]);
}

void drawF() {                                               // Draw The Letter 'F'
  stroke(0, 0, 255);                                         // Blue
  line(tf1[0],tf1[1],tf1[2], tf2[0],tf2[1],tf2[2]);
  line(tf2[0],tf2[1],tf2[2], tf3[0],tf3[1],tf3[2]);
  line(tf3[0],tf3[1],tf3[2], tf4[0],tf4[1],tf4[2]);
  line(tf4[0],tf4[1],tf4[2], tf5[0],tf5[1],tf5[2]);
  line(tf5[0],tf5[1],tf5[2], tf6[0],tf6[1],tf6[2]);
  line(tf6[0],tf6[1],tf6[2], tf7[0],tf7[1],tf7[2]);
  line(tf7[0],tf7[1],tf7[2], tf8[0],tf8[1],tf8[2]);
  line(tf8[0],tf8[1],tf8[2], tf9[0],tf9[1],tf9[2]);
  line(tf9[0],tf9[1],tf9[2], tf10[0],tf10[1],tf10[2]);
  line(tf10[0],tf10[1],tf10[2], tf11[0],tf11[1],tf11[2]);
  line(tf11[0],tf11[1],tf11[2], tf12[0],tf12[1],tf12[2]);
  line(tf12[0],tf12[1],tf12[2], tf13[0],tf13[1],tf13[2]);
  line(tf13[0],tf13[1],tf13[2], tf14[0],tf14[1],tf14[2]);
  line(tf14[0],tf14[1],tf14[2], tf15[0],tf15[1],tf15[2]);
  line(tf15[0],tf15[1],tf15[2], tf16[0],tf16[1],tf16[2]);
  line(tf16[0],tf16[1],tf16[2], tf17[0],tf17[1],tf17[2]);
  line(tf17[0],tf17[1],tf17[2], tf18[0],tf18[1],tf18[2]);
  line(tf18[0],tf18[1],tf18[2], tf1[0],tf1[1],tf1[2]);
    
  stroke(50, 50, 255);                                         // Light Blue
  line(txf1[0],txf1[1],txf1[2], txf2[0],txf2[1],txf2[2]);
  line(txf2[0],txf2[1],txf2[2], txf3[0],txf3[1],txf3[2]);
  line(txf3[0],txf3[1],txf3[2], txf4[0],txf4[1],txf4[2]);
  line(txf4[0],txf4[1],txf4[2], txf5[0],txf5[1],txf5[2]);
  line(txf5[0],txf5[1],txf5[2], txf6[0],txf6[1],txf6[2]);
  line(txf6[0],txf6[1],txf6[2], txf7[0],txf7[1],txf7[2]);
  line(txf7[0],txf7[1],txf7[2], txf8[0],txf8[1],txf8[2]);
  line(txf8[0],txf8[1],txf8[2], txf9[0],txf9[1],txf9[2]);
  line(txf9[0],txf9[1],txf9[2], txf10[0],txf10[1],txf10[2]);
  line(txf10[0],txf10[1],txf10[2], txf11[0],txf11[1],txf11[2]);
  line(txf11[0],txf11[1],txf11[2], txf12[0],txf12[1],txf12[2]);
  line(txf12[0],txf12[1],txf12[2], txf13[0],txf13[1],txf13[2]);
  line(txf13[0],txf13[1],txf13[2], txf14[0],txf14[1],txf14[2]);
  line(txf14[0],txf14[1],txf14[2], txf15[0],txf15[1],txf15[2]);
  line(txf15[0],txf15[1],txf15[2], txf16[0],txf16[1],txf16[2]);
  line(txf16[0],txf16[1],txf16[2], txf17[0],txf17[1],txf17[2]);
  line(txf17[0],txf17[1],txf17[2], txf18[0],txf18[1],txf18[2]);
  line(txf18[0],txf18[1],txf18[2], txf1[0],txf1[1],txf1[2]);
  
  // Joining Lines
  line(tf1[0],tf1[1],tf1[2], txf1[0],txf1[1],txf1[2]);
  line(tf2[0],tf2[1],tf2[2], txf2[0],txf2[1],txf2[2]);
  line(tf3[0],tf3[1],tf3[2], txf3[0],txf3[1],txf3[2]);
  line(tf4[0],tf4[1],tf4[2], txf4[0],txf4[1],txf4[2]);
  line(tf5[0],tf5[1],tf5[2], txf5[0],txf5[1],txf5[2]);
  line(tf6[0],tf6[1],tf6[2], txf6[0],txf6[1],txf6[2]);
  line(tf7[0],tf7[1],tf7[2], txf7[0],txf7[1],txf7[2]);
  line(tf8[0],tf8[1],tf8[2], txf8[0],txf8[1],txf8[2]);
  line(tf9[0],tf9[1],tf9[2], txf9[0],txf9[1],txf9[2]);
  line(tf10[0],tf10[1],tf10[2], txf10[0],txf10[1],txf10[2]);
  line(tf11[0],tf11[1],tf11[2], txf11[0],txf11[1],txf11[2]);
  line(tf12[0],tf12[1],tf12[2], txf12[0],txf12[1],txf12[2]);
  line(tf13[0],tf13[1],tf13[2], txf13[0],txf13[1],txf13[2]);
  line(tf14[0],tf14[1],tf14[2], txf14[0],txf14[1],txf14[2]);
  line(tf15[0],tf15[1],tf15[2], txf15[0],txf15[1],txf15[2]);
  line(tf16[0],tf16[1],tf16[2], txf16[0],txf16[1],txf16[2]);
  line(tf17[0],tf17[1],tf17[2], txf17[0],txf17[1],txf17[2]);
  line(tf18[0],tf18[1],tf18[2], txf18[0],txf18[1],txf18[2]);
}

void drawO() {                                             // Draw The Letter 'O'
  stroke(0, 0, 255);                                       // Blue
  line(to1[0],to1[1],to1[2], to2[0],to2[1],to2[2]);
  line(to2[0],to2[1],to2[2], to3[0],to3[1],to3[2]);
  line(to3[0],to3[1],to3[2], to4[0],to4[1],to4[2]);
  line(to4[0],to4[1],to4[2], to5[0],to5[1],to5[2]);
  line(to5[0],to5[1],to5[2], to6[0],to6[1],to6[2]);
  line(to6[0],to6[1],to6[2], to7[0],to7[1],to7[2]);
  line(to7[0],to7[1],to7[2], to8[0],to8[1],to8[2]);
  line(to8[0],to8[1],to8[2], to1[0],to1[1],to1[2]);
  
  line(to9[0],to9[1],to9[2], to10[0],to10[1],to10[2]);
  line(to10[0],to10[1],to10[2], to11[0],to11[1],to11[2]);
  line(to11[0],to11[1],to11[2], to12[0],to12[1],to12[2]);
  line(to12[0],to12[1],to12[2], to9[0],to9[1],to9[2]);
  
  stroke(50, 50, 255);                                     // Light blue
  line(txo1[0],txo1[1],txo1[2], txo2[0],txo2[1],txo2[2]);
  line(txo2[0],txo2[1],txo2[2], txo3[0],txo3[1],txo3[2]);
  line(txo3[0],txo3[1],txo3[2], txo4[0],txo4[1],txo4[2]);
  line(txo4[0],txo4[1],txo4[2], txo5[0],txo5[1],txo5[2]);
  line(txo5[0],txo5[1],txo5[2], txo6[0],txo6[1],txo6[2]);
  line(txo6[0],txo6[1],txo6[2], txo7[0],txo7[1],txo7[2]);
  line(txo7[0],txo7[1],txo7[2], txo8[0],txo8[1],txo8[2]);  
  line(txo8[0],txo8[1],txo8[2], txo1[0],txo1[1],txo1[2]);
  
  line(txo9[0],txo9[1],txo9[2], txo10[0],txo10[1],txo10[2]);
  line(txo10[0],txo10[1],txo10[2], txo11[0],txo11[1],txo11[2]);
  line(txo11[0],txo11[1],txo11[2], txo12[0],txo12[1],txo12[2]);
  line(txo12[0],txo12[1],txo12[2], txo9[0],txo9[1],txo9[2]);
  
  line(to1[0],to1[1],to1[2], txo1[0],txo1[1],txo1[2]);
  line(to2[0],to2[1],to2[2], txo2[0],txo2[1],txo2[2]);
  line(to3[0],to3[1],to3[2], txo3[0],txo3[1],txo3[2]);
  line(to4[0],to4[1],to4[2], txo4[0],txo4[1],txo4[2]);
  line(to5[0],to5[1],to5[2], txo5[0],txo5[1],txo5[2]);
  line(to6[0],to6[1],to6[2], txo6[0],txo6[1],txo6[2]);
  line(to7[0],to7[1],to7[2], txo7[0],txo7[1],txo7[2]);
  line(to8[0],to8[1],to8[2], txo8[0],txo8[1],txo8[2]);  
  line(to9[0],to9[1],to9[2], txo9[0],txo9[1],txo9[2]);
  line(to10[0],to10[1],to10[2], txo10[0],txo10[1],txo10[2]);
  line(to11[0],to11[1],to11[2], txo11[0],txo11[1],txo11[2]);
  line(to12[0],to12[1],to12[2], txo12[0],txo12[1],txo12[2]);
}

void drawT() {                                             // Draw The Letter 'T'
  stroke(0, 0, 255);                                       // Blue
  line(tt1[0],tt1[1],tt1[2], tt2[0],tt2[1],tt2[2]);
  line(tt2[0],tt2[1],tt2[2], tt3[0],tt3[1],tt3[2]);
  line(tt3[0],tt3[1],tt3[2], tt4[0],tt4[1],tt4[2]);
  line(tt4[0],tt4[1],tt4[2], tt5[0],tt5[1],tt5[2]);
  line(tt5[0],tt5[1],tt5[2], tt6[0],tt6[1],tt6[2]);
  line(tt6[0],tt6[1],tt6[2], tt7[0],tt7[1],tt7[2]);
  line(tt7[0],tt7[1],tt7[2], tt8[0],tt8[1],tt8[2]);
  line(tt8[0],tt8[1],tt8[2], tt9[0],tt9[1],tt9[2]);
  line(tt9[0],tt9[1],tt9[2], tt10[0],tt10[1],tt10[2]);
  line(tt10[0],tt10[1],tt10[2], tt11[0],tt11[1],tt11[2]);
  line(tt11[0],tt11[1],tt11[2], tt12[0],tt12[1],tt12[2]);
  line(tt12[0],tt12[1],tt12[2], tt1[0],tt1[1],tt1[2]);
  
  stroke(50, 50, 255);                                      // Light blue
  line(txt1[0],txt1[1],txt1[2], txt2[0],txt2[1],txt2[2]);
  line(txt2[0],txt2[1],txt2[2], txt3[0],txt3[1],txt3[2]);
  line(txt3[0],txt3[1],txt3[2], txt4[0],txt4[1],txt4[2]);
  line(txt4[0],txt4[1],txt4[2], txt5[0],txt5[1],txt5[2]);
  line(txt5[0],txt5[1],txt5[2], txt6[0],txt6[1],txt6[2]);
  line(txt6[0],txt6[1],txt6[2], txt7[0],txt7[1],txt7[2]);
  line(txt7[0],txt7[1],txt7[2], txt8[0],txt8[1],txt8[2]);
  line(txt8[0],txt8[1],txt8[2], txt9[0],txt9[1],txt9[2]);
  line(txt9[0],txt9[1],txt9[2], txt10[0],txt10[1],txt10[2]);
  line(txt10[0],txt10[1],txt10[2], txt11[0],txt11[1],txt11[2]);
  line(txt11[0],txt11[1],txt11[2], txt12[0],txt12[1],txt12[2]);
  line(txt12[0],txt12[1],txt12[2], txt1[0],txt1[1],txt1[2]);
  
  line(tt1[0],tt1[1],tt1[2], txt1[0],txt1[1],txt1[2]);
  line(tt2[0],tt2[1],tt2[2], txt2[0],txt2[1],txt2[2]);
  line(tt3[0],tt3[1],tt3[2], txt3[0],txt3[1],txt3[2]);
  line(tt4[0],tt4[1],tt4[2], txt4[0],txt4[1],txt4[2]);
  line(tt5[0],tt5[1],tt5[2], txt5[0],txt5[1],txt5[2]);
  line(tt6[0],tt6[1],tt6[2], txt6[0],txt6[1],txt6[2]);
  line(tt7[0],tt7[1],tt7[2], txt7[0],txt7[1],txt7[2]);
  line(tt8[0],tt8[1],tt8[2], txt8[0],txt8[1],txt8[2]);
  line(tt9[0],tt9[1],tt9[2], txt9[0],txt9[1],txt9[2]);
  line(tt10[0],tt10[1],tt10[2], txt10[0],txt10[1],txt10[2]);
  line(tt11[0],tt11[1],tt11[2], txt11[0],txt11[1],txt11[2]);
  line(tt12[0],tt12[1],tt12[2], txt12[0],txt12[1],txt12[2]);
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