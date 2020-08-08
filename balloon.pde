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
  
  /* using 'While Loop' for draw balloons
     syntax : 
        while (condition) {
            ...code block to be executed...
        }
  */
  
  int round = 0;
  while (round < 10){
    // if condition is true, it will running this loop until round = 9 
    // running this loop 10 rounds ("round = 0" until "round = 9")
    
    position_x = random(width);
    position_y = random(width);
    size = random(10,100);
    
    fill(blue);
    stroke(blue); 
    circle(position_x, position_y, size);
    line(position_x, position_y+(size/2), position_x, position_y+(size/2)+size);
    
    // add rounds
    round += 1;
  }
  
  // called noLoop() for stop the code in draw()
  noLoop();
}
