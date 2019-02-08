/**
 * Joe O'Regan
 * K00203642
 *
 * PrimitivePShape. 
 * 
 * Using a PShape to display a custom polygon. 
 * 
 * 08/11/2017 Removed code for 4 windows using translate() instead
 */

// The PShape object
PShape house, door, chimney,window;

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
  
  // window - 08/11/2017 Removed code for 4 windows using translate() instead
  window = createShape();
  window.beginShape();
  window.fill(240, 255, 240);  // light blue
  window.stroke(255);
  window.strokeWeight(2);
  window.vertex(40, -10);
  window.vertex(40,-25);
  window.vertex(20, -25);
  window.vertex(20,-10);
  window.vertex(40, -10);
  window.endShape();  
    
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
  shape(chimney);
  shape(door);
  shape(window);
  translate(-60,0);
  shape(window);
  translate(0,-20);
  shape(window);
  translate(60,0);
  shape(window);
}