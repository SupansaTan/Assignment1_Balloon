// Name : Supansa Tantulset
// Date : 9 August 2020
// Can draw Balloons, set color of balloon, balloon can float

// define var colors 
color blue = color(14,77,146);
color white = color(255);

// define var positions and size of the balloon
float position_x = 250, position_y = 200, size = 50;

void setup(){
  size(500,500);
  background(white);
}

void draw(){
  
  // set draw background all round for don't draw balloon overlapping
  background(white);
  
  // draw a balloon
  fill(blue);
  stroke(blue); 
  circle(position_x, position_y, size);
  line(position_x, position_y+(size/2), position_x, position_y+(size/2)+size);

  // change value of position_y for balloon floating
  position_y -= 1;
  
}
