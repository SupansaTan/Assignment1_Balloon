// Name : Supansa Tantulset
// Date : 9 August 2020
// Draw Balloon and can set color of balloon (fix all hardcode)

// define global variables for storing colors 
color blue = color(14,77,146);
color white = color(255);

void setup(){
  // set size of window 
  size(500,500);
  
  // set a background color of the window
  background(white);
}

void draw(){
  // define local variables for storing position x,y and extent
  int position_x = 250, position_y = 200, size = 50;
  
  // set color of balloon
  fill(blue);
  stroke(blue); 
  
  // draw balloon
  circle(position_x, position_y, size);
  line(position_x, position_y+(size/2), position_x, position_y+(size/2)+size);
  
  // called noLoop() for stop the code in draw()
  noLoop();
}
