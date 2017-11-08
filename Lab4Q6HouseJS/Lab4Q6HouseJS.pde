int[][] house = {{50,0},{50,-50},{60,-50},{0,-80},{-60,-50},{-50,-50},{-50,0},{50,0}};
int[][] door = {{10,0},{10,-25},{-10,-25},{-10,0},{10,0}};
int[][] chimney = {{25,-75},{35,-75},{35,-62},{25,-67},{25,-75}};
int[][] window = {{40,-10},{40,-25},{20,-25},{20,-10},{40,-10}};

void setup() {
  size(640, 400);
}

void draw() {
  background(0);
  stroke(80,170,240);
  
  strokeWeight(2);
  drawShape(house,7);
  stroke(255,0,0);
  drawShape(door,4);
  stroke(80,170,240);
  drawShape(chimney,4);
  stroke(240, 255, 240);
  drawShape(window,4);
  translate(-60,0);
  drawShape(window,4);
  translate(0,-20);
  drawShape(window,4);
  translate(60,0);
  drawShape(window,4);
}

// Draw the shape
void drawShape(int[][] array, int size){
  for (int i = 0; i < size; i++){
      line(mouseX + array[i][0],mouseY + array[i][1], mouseX + array[i+1][0],mouseY + array[i+1][1]);      
  }
}