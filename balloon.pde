// Name : Supansa Tantulset
// Date : 8 August 2020
// Draw Balloon and can set color of balloon (fix some hardcode)

void setup(){
  // set size of window 
  size(500,500);
  
  // set a background color of the window
  background(255); // color : white
}

void draw(){
  // define variables for storing position x,y and extent
  // <type of value> var name = value
  int position_x = 250, position_y = 200, size = 50;
  
  fill(#0E4D92); // color : Yale Blue
  stroke(14,77,146); // color : Yale Blue
  
  // draw balloon
  circle(position_x, position_y, size);
  line(position_x, position_y+(size/2), position_x, position_y+(size/2)+size);
  
  // called noLoop() for stop the code in draw()
  noLoop();
}
