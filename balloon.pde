// Name : Supansa Tantulset
// Date : 8 August 2020
// Draw Balloon and can set color of balloon  (hardcode)

void setup(){
  // set size of window 
  size(500,500);
  
  // set a background color of the window
  // syntax : background(RGB or Hex)
  background(255); // color : white
}

void draw(){
  
  // set color by using fill() and stroke() functions
  // place this function above the shape that you want to change color
  // syntax : fill(RGB or Hex) , stroke(RGB or Hex)
  
  fill(#0E4D92); // RGB color code : Yale Blue
  stroke(14,77,146); // Hex color code : Yale Blue
  
  // if you want the shape that nothing will appear, use noFill() or noStroke()
  
  // draw balloon by using circle and line (hardcode)
  circle(250,200,50);
  line(250,225,250,275);
  
  // called noLoop() for stop the code in draw()
  noLoop();
}
