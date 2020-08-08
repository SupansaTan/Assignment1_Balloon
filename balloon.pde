// Name : Supansa Tantulset
// Date : 9 August 2020
// Can draw Balloon, set color of balloon, random value of position and size

// define var colors 
color blue = color(14,77,146);
color white = color(255);

void setup(){
  // set size of window 
  size(500,500);
  
  // set a background color of the window
  background(white);
}

void draw(){
  // Now, the position and size can random value by using random(lower limit, upper limit) function
  // random() function use with type 'float'
  float position_x = random(width), position_y = random(width), size = random(10,100);
  
  // set color of balloon
  fill(blue);
  stroke(blue); 
  
  // draw balloon
  circle(position_x, position_y, size);
  line(position_x, position_y+(size/2), position_x, position_y+(size/2)+size);
  
  // called noLoop() for stop the code in draw()
  noLoop();
}
