/**
 * PrimitivePShape. 
 * 
 * Using a PShape to display a custom polygon. 
 */

// The PShape object
PShape house, door, chimney;
PShape window1, window2, window3, window4;

void setup() {
  size(640, 360, P2D);        // Set the window size
  smooth();                   // Draws all geometry with anti-aliased edges
  // First create the shape
  house = createShape();      // Defines a new shape
  house.beginShape();         // Create more complex forms
  // You can set fill and stroke
  house.fill(102);            // Grey colour
  house.stroke(255);          // White outline
  house.strokeWeight(2);      // Line thickness of 2
  // Here, we are hardcoding a series of vertices
  house.vertex(50, 0);        // Specify vertex coordinates for points
  house.vertex(50, -50);
  house.vertex(60, -50);
  house.vertex(0, -80);
  house.vertex(-60, -50);
  house.vertex(-50, -50);
  house.vertex(-50, 0);
  house.vertex(50, 0);
  house.endShape();           // Write shape data to buffer
  
  // door
  door = createShape();
  door.beginShape();
  door.fill(255, 0, 0);
  door.stroke(255);
  door.strokeWeight(2);
  door.vertex(10, 0);
  door.vertex(10,-25);
  door.vertex(-10, -25);
  door.vertex(-10,0);
  door.endShape();  
  
  // window 1
  window1 = createShape();
  window1.beginShape();
  window1.fill(240, 255, 240);  // light blue
  window1.stroke(255);
  window1.strokeWeight(2);
  window1.vertex(40, -10);
  window1.vertex(40,-25);
  window1.vertex(20, -25);
  window1.vertex(20,-10);
  window1.vertex(40, -10);
  window1.endShape();  
  
  // window 2
  window2 = createShape();
  window2.beginShape();
  window2.fill(240, 255, 240);  // light blue
  window2.stroke(255);
  window2.strokeWeight(2);
  window2.vertex(-40, -10);
  window2.vertex(-40,-25);
  window2.vertex(-20, -25);
  window2.vertex(-20,-10);
  window2.vertex(-40, -10);
  window2.endShape();  
  
  // window 3
  window3 = createShape();
  window3.beginShape();
  window3.fill(240, 255, 240);  // light blue
  window3.stroke(255);
  window3.strokeWeight(2);
  window3.vertex(40, -30);
  window3.vertex(40,-45);
  window3.vertex(20, -45);
  window3.vertex(20,-30);
  window3.vertex(40, -30);
  window3.endShape();  
  
  // window 4
  window4 = createShape();
  window4.beginShape();
  window4.fill(240, 255, 240);  // light blue
  window4.stroke(255);
  window4.strokeWeight(2);
  window4.vertex(-40, -30);
  window4.vertex(-40,-45);
  window4.vertex(-20, -45);
  window4.vertex(-20,-30);
  window4.vertex(-40, -30);
  window4.endShape();  
  
  // chimney
  chimney = createShape();
  chimney.beginShape();
  chimney.fill(102);  // same as house
  chimney.stroke(255);
  chimney.strokeWeight(2);
  chimney.vertex(25, -75);
  chimney.vertex(35,-75);
  chimney.vertex(35, -62);
  chimney.vertex(25, -67);
  chimney.vertex(25, -75);
  chimney.endShape();  
}

void draw() {
  background(51);
  // We can use translate to move the PShape
  translate(mouseX, mouseY); // Amount to displace objects within the window
  // Display the shape
  shape(house); // Draws shapes to the display window
  shape(door);
  shape(window1);
  shape(window2);
  shape(window3);
  shape(window4);
  shape(chimney);
}