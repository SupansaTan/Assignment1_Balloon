// Name : Supansa Tantulset
// Date : 9 August 2020
// Can draw Balloon, set color of balloon, random value of position and size

// define var colors 
color blue = color(14,77,146);
color white = color(255);

void setup(){
  size(500,500);
  background(white);
}

void draw(){
  // define var positions and size of the balloon
  float position_x, position_y, size;
  
  /* using 'For Loop' for draw balloons
     syntax : 
        for (statement 1; statement 2; statement 3) {
           ...code block to be executed...
        }
  */
  
  for (int i=0; i<10; i++){
    // it will running this loop until i = 9 
    // running this loop 10 rounds ("i = 0" until "i = 9")
    
    position_x = random(width);
    position_y = random(width);
    size = random(10,100);
    
    fill(blue);
    stroke(blue); 
    circle(position_x, position_y, size);
    line(position_x, position_y+(size/2), position_x, position_y+(size/2)+size);
  }
  
  // called noLoop() for stop the code in draw()
  noLoop();
}
