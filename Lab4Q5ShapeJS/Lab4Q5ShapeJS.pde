/**
 * PrimitivePShape. 
 * 
 * Using points instead of
 * Using a PShape to display a custom polygon. 
 */

int [][] star = {{0,-50},{14,-20},{47,-15},{23,7},{29,40},{0,25},{-29,40},{-23,7},{-47,-15},{-14,-20},{0,-50}};

void setup() {
  size(640, 360, P2D);       // Set the window size
  smooth();                  // Draws all geometry with anti-aliased edges
  
  //star.fill(102);            // Grey colour
  stroke(255);          // White outline
  strokeWeight(2);      // Line thickness of 2
  
}

void draw() {
  background(51);
  // We can use translate to move the PShape
  translate(mouseX, mouseY); // Amount to displace objects within the window
  // Display the shape
  drawShape(star,10);
}

void drawShape(int[][] array, int size){
  for (int i = 0; i < size; i++){
      line(mouseX + array[i][0],mouseY + array[i][1], mouseX + array[i+1][0],mouseY + array[i+1][1]);      
  }
}