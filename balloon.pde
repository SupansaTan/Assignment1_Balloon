// Name : Supansa Tantulset
// Date : 9 August 2020
// Can draw Balloons, set color of balloon, random value of position and size

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
    
  int round = 0;
  while (round < 10){
    
    /* Try using 'Break' and 'Continue' in loop with conditions and If statement
        Break : used to jump out of a loop
        Continue : used to breaks one iteration and continues with the next iteration in the loop.  
    */
    
    if (round == 2){
      // when 'round = 2' it will add rounds and running the next iteration in the loop
      round += 1;
      continue;
    }
    
    if (round == 5){
      // when 'round = 5' it will jump out of loop  
      break;
    }
    
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
