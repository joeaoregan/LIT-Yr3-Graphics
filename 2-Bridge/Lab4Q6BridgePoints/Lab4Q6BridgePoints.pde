/**
 * Joe O'Regan
 * Modified processing code to imlement bridge that moves with mouse cursor
 * Year 2
 * Graphics
 *
 * The Original version used:
 * Primitive PShape. 
 * Using a PShape to display a custom polygon. 
 *
 * This version uses points as PShape didn't agree to well with Processing.js the way I tried it
 */

// Points to replace PShape objects
int[][] bridge = {{0,160},{227,160},{227,1},{246,1},{246,160},{464,160},
                  {464,170},{246,170},{246,220},{227,220},{227,170},{0,170}};                            // 12 points
int[][] curve1 = {{248,158},{248,16},{265,46},{284,68},{303,89},{321,106},{340,121},
                  {359,133},{378,142},{396,149},{415,155},{440,158},{248,158}};                          // 13 points
int[][] curve2 = {{0,158},{225,158},{225,12},{207,34},{188,52},{169,68},{151,81},{132,94},
                  {113,105},{94,114},{76,122},{57,127},{38,132},{19,134},{0,135},{0,158}};               // 16 points

int[][] lines1 = {{265,46,265,158},{284,158,284,68},{303,89,303,158},{321,158,321,106},{340,158,340,121},
                  {359,158,359,133},{378,158,378,142},{396,158,396,149}};  // 8 lines
int[][] lines2 = {{207,158,207,34},{188,158,188,52},{169,158,169,68},{151,158,151,81},{132,158,132,94},
                  {113,158,113,105},{94,158,94,114},{76,158,76,122},{57,158, 57,127},{38,158,38,132},
                  {19,158,19,134}};                                                                      // 11 lines

// Draw the shape
void drawShape(int[][] array, int size){
  for (int i = 0; i < size; i++){
      line(mouseX + array[i][0],mouseY + array[i][1], mouseX + array[i+1][0],mouseY + array[i+1][1]);      
  }
}
// Draw the shape on the negative side
void drawNegativeShape(int[][] array, int size){
  for (int i = 0; i < size; i++){
      line(mouseX - array[i][0],mouseY + array[i][1], mouseX - array[i+1][0],mouseY + array[i+1][1]);      
  }
}

// Draw the vertical lines from road to curve
void drawPositiveLine(int[][] line, int size){
  for (int i = 0; i < size; i++){
      line(mouseX + line[i][0],mouseY + line[i][1],mouseX + line[i][2],mouseY + line[i][3]);    // positive x coordinate
  }
}
void drawNegativeLine(int[][] line, int size){
  for (int i = 0; i < size; i++){
      line(mouseX - line[i][0],mouseY + line[i][1],mouseX - line[i][2],mouseY + line[i][3]);    // negative x coordinate
  }
}

void setup() {
  size(1000, 600, P2D);         // Window size, 2D renderer
  //smooth();                     // Draw all geometry with anti-aliased edges
}

void draw() {
  background(51);               // Set the background colour
  
  // Display the shape
  stroke(0);
  strokeWeight(2);
  drawShape(bridge,11);         // Draws shapes to the display bridge
  drawNegativeShape(bridge,11);
  stroke(255);                  // White outline
  drawShape(curve1,12);       
  drawNegativeShape(curve1,12);  
  drawShape(curve2,15);       
  drawNegativeShape(curve2,15);
  
  strokeWeight(1);
  drawPositiveLine(lines1,8);   // road to small curve right
  drawNegativeLine(lines1,8);   // road to small curve left
  drawPositiveLine(lines2,11);  // road to large curve right
  drawNegativeLine(lines2,11);  // road to large curve left  
}