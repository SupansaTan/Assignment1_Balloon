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
  
  // set draw background every round for don't draw balloon overlapping
  background(white);
  
  // draw a balloon
  fill(blue);
  stroke(blue); 
  circle(position_x, position_y, size);
  line(position_x, position_y+(size/2), position_x, position_y+(size/2)+size);
  
  /* Try using else...if statement 
     syntax :
     if (condition1) {
        ...block of code to be executed if condition1 is true...
     } else if (condition2) {
        ...block of code to be executed if the condition1 is false and condition2 is true...
     } else {
        ...block of code to be executed if the condition1 is false and condition2 is false...
     }
  */
  
  // change value of position_y for balloon floating
  if (position_y > 0) {
    
    // when position_y > 0 it will decrease value of position_y one by one
    position_y -= 1;
    
  } else if (position_y < 0) {
    
    // when position_y beyond the top margin it will define value of position_y is height
    position_y = height;
    
  } else {
    
    // when position_y not match both conditions 
    position_y = height;  
  }
  
}
