/**
 * Joe O'Regan
 * Modified processing code to imlement bridge that moves with mouse cursor
 * Year 2
 * Graphics
 *
 * PrimitivePShape. 
 * 
 * Using a PShape to display a custom polygon. 
 */

// The PShape object
PShape bridge, bridgeCurve1, bridgeCurve1Flip, 
bridgeMidCurveNeg, bridgeMidCurvePos, bridgeLines;

void setup() {
  size(1000, 600, P2D);   // Window size, 2D renderer
  smooth(); // Draw all geometry with anti-aliased edges
  bridge = createShape(); // Defines a new shape
  bridge.beginShape();    // Create more complex forms
  bridge.fill(102);       // Set fill Grey colour
  bridge.stroke(255);     // Set stroke white outline
  bridge.strokeWeight(2); // Line thickness of 2
  
  // Here, we are hardcoding a series of vertices  
  // Specify vertex coordinates for points  
  /* Half Bridge (original points)
  bridge.vertex(499, 195);  // a
  bridge.vertex(272, 195);  // b
  bridge.vertex(272,  36);  // c
  bridge.vertex(253,  36);  // d
  bridge.vertex(253, 195);  // e
  bridge.vertex(35,  195);  // f
  bridge.vertex(35,  205);  // g
  bridge.vertex(253, 205);  // h
  bridge.vertex(253, 253);  // i
  bridge.vertex(272, 253);  // j
  bridge.vertex(272, 205);  // k  
  bridge.vertex(499, 205);  // l  
  
  // Subtract 499 from x, 35 from y */
  //translate(-499, -35); // Easy way to move origin
 
  // negative side of bridge transposed to origin
  bridge.vertex( 0,   160);  // a
  bridge.vertex(-227, 160);  // b
  bridge.vertex(-227,   1);  // c
  bridge.vertex(-246,   1);  // d
  bridge.vertex(-246, 160);  // e
  bridge.vertex(-464, 160);  // f
  bridge.vertex(-464, 170);  // g
  bridge.vertex(-246, 170);  // h
  bridge.vertex(-246, 220);  // i offset by 2 (not important)
  bridge.vertex(-227, 220);  // j offset by 2 (not important)
  bridge.vertex(-227, 170);  // k  
  bridge.vertex( 0,   170);  // l
  
  // Positive side of bridge
  // Points in reverse order with positive X
  bridge.vertex(0,   170);  // l
  bridge.vertex(227, 170);  // k  
  bridge.vertex(227, 220);  // j
  bridge.vertex(246, 220);  // i 
  bridge.vertex(246, 170);  // h
  bridge.vertex(464, 170);  // g
  bridge.vertex(464, 160);  // f
  bridge.vertex(246, 160);  // e
  bridge.vertex(246,   1);  // d
  bridge.vertex(227,   1);  // c
  bridge.vertex(227, 160);  // b  
  bridge.vertex(0,   160);  // a  
  bridge.endShape();        // Write shape data to buffer
  
  // 1st curve of bridge
  bridgeCurve1 = createShape();      // Defines a new shape
  bridgeCurve1.beginShape();         // Create more complex forms
  bridgeCurve1.fill(51);             // Grey colour (match background)
  bridgeCurve1.stroke(255);          // White outline
  bridgeCurve1.strokeWeight(2);      // Line thickness of 2
  // 1st curve on bridge  
  //bridge.curveVertex(253,51); // the first control point
  /*
  bridge.curveVertex(253,51); // is also the start point of curve
  bridge.curveVertex(234,81);
  bridge.curveVertex(215,103);
  bridge.curveVertex(196,124);
  bridge.curveVertex(178,141);
  bridge.curveVertex(159,156);
  bridge.curveVertex(140,168);
  bridge.curveVertex(121,177);
  bridge.curveVertex(103,184);
  bridge.curveVertex(84,190);  
  //bridge.curveVertex(59, 194); // the last point of curve
  bridge.curveVertex(59, 194);   // is also the last control point */ 
  
  // Translate curve
  // Subtract 499 from x, 35 from y
  bridgeCurve1.vertex(-246, 160);    // e from bridge
  bridgeCurve1.vertex(-246,16);
  bridgeCurve1.curveVertex(-246,16);
  bridgeCurve1.curveVertex(-246,16); // is also the start point of curve
  bridgeCurve1.curveVertex(-265,46);
  bridgeCurve1.curveVertex(-284,68);
  bridgeCurve1.curveVertex(-303,89);
  bridgeCurve1.curveVertex(-321,106);
  bridgeCurve1.curveVertex(-340,121);
  bridgeCurve1.curveVertex(-359,133);
  bridgeCurve1.curveVertex(-378,142);
  bridgeCurve1.curveVertex(-396,149);
  bridgeCurve1.curveVertex(-415,155);
  bridgeCurve1.curveVertex(-440, 160);
  bridgeCurve1.curveVertex(-440, 160); // is also the last control point
  bridgeCurve1.vertex(-246, 160);      // e from bridge  
  bridgeCurve1.endShape();             // Write shape data to buffer

  // last curve (opposite to first, Flip the small curve)
  bridgeCurve1Flip = createShape();      // Defines a new shape
  bridgeCurve1Flip.beginShape();         // Create more complex forms
  bridgeCurve1Flip.fill(51);             // Grey colour (match background)
  bridgeCurve1Flip.stroke(255);          // White outline
  bridgeCurve1Flip.strokeWeight(2);      // Line thickness of 2
  
  bridgeCurve1Flip.vertex(246, 160);     // e
  bridgeCurve1Flip.vertex(246,16);       // start of curve
  bridgeCurve1Flip.curveVertex(246,16);
  bridgeCurve1Flip.curveVertex(246,16);  // is also the start point of curve
  bridgeCurve1Flip.curveVertex(265,46);
  bridgeCurve1Flip.curveVertex(284,68);
  bridgeCurve1Flip.curveVertex(303,89);
  bridgeCurve1Flip.curveVertex(321,106);
  bridgeCurve1Flip.curveVertex(340,121);
  bridgeCurve1Flip.curveVertex(359,133);
  bridgeCurve1Flip.curveVertex(378,142);
  bridgeCurve1Flip.curveVertex(396,149);
  bridgeCurve1Flip.curveVertex(415,155);
  bridgeCurve1Flip.curveVertex(440, 160);
  bridgeCurve1Flip.curveVertex(440, 160); // is also the last control point
  bridgeCurve1Flip.vertex(246, 160);      // e  
  
  bridgeCurve1Flip.endShape();            // Write shape data to buffer#
  
  
  // Middle Curve negative side
  bridgeMidCurveNeg = createShape();      // Defines a new shape
  bridgeMidCurveNeg.beginShape();         // Create more complex forms
  bridgeMidCurveNeg.fill(51);              // Grey colour (match background)
  bridgeMidCurveNeg.stroke(255);          // White outline
  bridgeMidCurveNeg.strokeWeight(2);      // Line thickness of 2
  /*
  bridgeMidCurveNeg.vertex(499,195);
  bridgeMidCurveNeg.vertex(272, 195);  // b
  bridgeMidCurveNeg.curveVertex(272, 47); // Curve Start
  bridgeMidCurveNeg.curveVertex(272, 47); // is also the start point of curve  
  bridgeMidCurveNeg.curveVertex(292, 69);
  bridgeMidCurveNeg.curveVertex(311, 87);
  bridgeMidCurveNeg.curveVertex(330, 103);
  bridgeMidCurveNeg.curveVertex(348, 116);
  bridgeMidCurveNeg.curveVertex(367, 129);
  bridgeMidCurveNeg.curveVertex(386, 140);
  bridgeMidCurveNeg.curveVertex(405, 149);
  bridgeMidCurveNeg.curveVertex(423, 157);
  bridgeMidCurveNeg.curveVertex(442, 162);
  bridgeMidCurveNeg.curveVertex(461, 167);
  bridgeMidCurveNeg.curveVertex(480, 169);  
  bridgeMidCurveNeg.curveVertex(499, 170);
  bridgeMidCurveNeg.curveVertex(499, 170); // is also the last control point  
  
  bridgeMidCurveNeg.curveVertex(499, 195);
  bridgeMidCurveNeg.curveVertex(499, 195); // is also the last control point  
  bridgeMidCurveNeg.vertex(499, 195);  
  */
  // x -499, y - 35
  bridgeMidCurveNeg.vertex(0,160);
  bridgeMidCurveNeg.vertex(-227, 160);  // b
  bridgeMidCurveNeg.curveVertex(-227, 12); // Curve Start
  bridgeMidCurveNeg.curveVertex(-227, 12); // is also the start point of curve 
  
  bridgeMidCurveNeg.curveVertex(-207, 34);
  bridgeMidCurveNeg.curveVertex(-188, 52);
  bridgeMidCurveNeg.curveVertex(-169, 68);
  bridgeMidCurveNeg.curveVertex(-151, 81);
  bridgeMidCurveNeg.curveVertex(-132, 94);
  bridgeMidCurveNeg.curveVertex(-113, 105);
  bridgeMidCurveNeg.curveVertex(-94, 114);
  bridgeMidCurveNeg.curveVertex(-76, 122);
  bridgeMidCurveNeg.curveVertex(-57, 127);
  bridgeMidCurveNeg.curveVertex(-38, 132);
  bridgeMidCurveNeg.curveVertex(-19, 134);  
  
  bridgeMidCurveNeg.curveVertex(0, 135);
  bridgeMidCurveNeg.curveVertex(0, 135); // is also the last control point  
  bridgeMidCurveNeg.vertex(0, 160); 
  
  bridgeMidCurveNeg.endShape();        // Write shape data to buffer
  
  
  
  
  // Middle Curve Positive Side x -499, y -35
  bridgeMidCurvePos = createShape();      // Defines a new shape
  bridgeMidCurvePos.beginShape();         // Create more complex forms
  bridgeMidCurvePos.fill(51);             // Grey colour (match background)
  bridgeMidCurvePos.stroke(255);          // White outline
  bridgeMidCurvePos.strokeWeight(2);      // Line thickness of 2
  
  bridgeMidCurvePos.vertex(0,160);
  bridgeMidCurvePos.vertex(227, 160);     // b
  bridgeMidCurvePos.curveVertex(227, 12); // Curve Start
  bridgeMidCurvePos.curveVertex(227, 12); // Also the start point of curve 
  
  bridgeMidCurvePos.curveVertex(207, 34);
  bridgeMidCurvePos.curveVertex(188, 52);
  bridgeMidCurvePos.curveVertex(169, 68);
  bridgeMidCurvePos.curveVertex(151, 81);
  bridgeMidCurvePos.curveVertex(132, 94);
  bridgeMidCurvePos.curveVertex(113, 105);
  bridgeMidCurvePos.curveVertex(94, 114);
  bridgeMidCurvePos.curveVertex(76, 122);
  bridgeMidCurvePos.curveVertex(57, 127);
  bridgeMidCurvePos.curveVertex(38, 132);
  bridgeMidCurvePos.curveVertex(19, 134);  
  
  bridgeMidCurvePos.curveVertex(0, 135);
  bridgeMidCurvePos.curveVertex(0, 135); // is also the last control point  
  bridgeMidCurvePos.vertex(0, 160); 
  
  bridgeMidCurvePos.endShape();          // Write shape data to buffer
    
  // bridgeLines  
  bridgeLines = createShape();     // Defines a new shape
  bridgeLines.beginShape();        // Create more complex forms
  bridgeLines.fill(51);            // Grey colour
  bridgeLines.stroke(255);         // White outline  
  bridgeLines.strokeWeight(2);     // Line thickness of 2
  
  // x -499, y - 35
  bridgeLines.vertex( -265,  46);  // point on curve
  bridgeLines.vertex( -265, 160);  // point on road
  bridgeLines.vertex( -284, 160);  // point on road
  bridgeLines.vertex( -284, 68);   // point on curve
  
  bridgeLines.beginContour();
  bridgeLines.vertex( -303,  89);  // point on curve
  bridgeLines.vertex( -303, 160);  // point on road
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( -321, 160);  // point on road
  bridgeLines.vertex( -321, 106);  // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( -340, 160);  // point on road
  bridgeLines.vertex( -340, 121);  // point on curve
  bridgeLines.endContour();  
  bridgeLines.beginContour();
  bridgeLines.vertex( -359, 160);  // point on road
  bridgeLines.vertex( -359, 133);  // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( -378, 160);  // point on road
  bridgeLines.vertex( -378, 142);  // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( -396, 160);  // point on road
  bridgeLines.vertex( -396, 149);  // point on curve
  bridgeLines.endContour();
  
  
  bridgeLines.beginContour();
  bridgeLines.vertex( 265,  46);  // point on curve
  bridgeLines.vertex( 265, 160);  // point on road
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( 284, 160);  // point on road
  bridgeLines.vertex( 284, 68);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( 303,  89);  // point on curve
  bridgeLines.vertex( 303, 160);  // point on road
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( 321, 160);  // point on road
  bridgeLines.vertex( 321, 106);  // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( 340, 160);  // point on road
  bridgeLines.vertex( 340, 121);  // point on curve
  bridgeLines.endContour();  
  bridgeLines.beginContour();
  bridgeLines.vertex( 359, 160);  // point on road
  bridgeLines.vertex( 359, 133);  // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( 378, 160);  // point on road
  bridgeLines.vertex( 378, 142);  // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( 396, 160);  // point on road
  bridgeLines.vertex( 396, 149);  // point on curve
  bridgeLines.endContour();
  
  
  
  bridgeLines.beginContour();
  bridgeLines.vertex( -207, 160);  // point on road
  bridgeLines.vertex( -207, 34);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( -188, 160);  // point on road
  bridgeLines.vertex( -188, 52);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( -169, 160);  // point on road
  bridgeLines.vertex( -169, 68);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( -151, 160);  // point on road
  bridgeLines.vertex( -151, 81);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( -132, 160);  // point on road
  bridgeLines.vertex( -132, 94);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( -113, 160);  // point on road
  bridgeLines.vertex( -113, 105);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( -94, 160);  // point on road
  bridgeLines.vertex( -94, 114);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( -76, 160);  // point on road
  bridgeLines.vertex( -76, 122);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( -57, 160);  // point on road
  bridgeLines.vertex( -57, 127);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( -38, 160);  // point on road
  bridgeLines.vertex( -38, 132);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex( -19, 160);  // point on road
  bridgeLines.vertex( -19, 134);   // point on curve
  bridgeLines.endContour();
  
  bridgeLines.beginContour();
  bridgeLines.vertex(207, 160);  // point on road
  bridgeLines.vertex(207, 34);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex(188, 160);  // point on road
  bridgeLines.vertex(188, 52);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex(169, 160);  // point on road
  bridgeLines.vertex(169, 68);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex(151, 160);  // point on road
  bridgeLines.vertex(151, 81);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex(132, 160);  // point on road
  bridgeLines.vertex(132, 94);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex(113, 160);  // point on road
  bridgeLines.vertex(113, 105);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex(94, 160);  // point on road
  bridgeLines.vertex(94, 114);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex(76, 160);  // point on road
  bridgeLines.vertex(76, 122);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex(57, 160);  // point on road
  bridgeLines.vertex(57, 127);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex(38, 160);  // point on road
  bridgeLines.vertex(38, 132);   // point on curve
  bridgeLines.endContour();
  bridgeLines.beginContour();
  bridgeLines.vertex(19, 160);  // point on road
  bridgeLines.vertex(19, 134);   // point on curve
  bridgeLines.endContour();
  
  bridgeLines.endShape();          // Write shape data to buffer
}


void draw() {
  background(51);
  // We can use translate to move the PShape
  translate(mouseX, mouseY); // Amount to displace objects within the window
  // Display the shape
  shape(bridge);               // Draws shapes to the display bridge
  shape(bridgeCurve1);       
  shape(bridgeCurve1Flip);   
  shape(bridgeMidCurveNeg);     
  shape(bridgeMidCurvePos);     
  shape(bridgeLines);       
}