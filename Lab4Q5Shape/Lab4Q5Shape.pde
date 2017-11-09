/**
 * PrimitivePShape. 
 * 
 * Using a PShape to display a custom polygon. 
 */

// The PShape object
PShape star;

void setup() {
  size(640, 360, P2D);       // Set the window size
  smooth();                  // Draws all geometry with anti-aliased edges
  // First create the shape
  star = createShape();      // Defines a new shape
  star.beginShape();         // Create more complex forms
  // You can set fill and stroke
  star.fill(102);            // Grey colour
  star.stroke(255);          // White outline
  star.strokeWeight(2);      // Line thickness of 2
  // Here, we are hardcoding a series of vertices
  star.vertex(0, -50);       // Specify vertex coordinates for points
  star.vertex(14, -20);
  star.vertex(47, -15);
  star.vertex(23, 7);
  star.vertex(29, 40);
  star.vertex(0, 25);
  star.vertex(-29, 40);
  star.vertex(-23, 7);
  star.vertex(-47, -15);
  star.vertex(-14, -20);
  star.endShape();           // Write shape data to buffer
}

void draw() {
  background(51);
  // We can use translate to move the PShape
  translate(mouseX, mouseY); // Amount to displace objects within the window
  // Display the shape
  shape(star);               // Draws shapes to the display window
}