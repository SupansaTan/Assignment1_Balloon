// Name : Supansa Tantulset
// Date : 9 August 2020
// Can draw Balloons, set color of balloon, balloon can float

// define var colors 
color blue = color(14,77,146);
color white = color(255);

// declare and creating an Array object of the class
// syntax : <ClassName>[] <ObjectName>; 
Balloon[] balloons;

void setup(){
  size(500,500);
  background(white);
  
  // define number of balloons
  int quantity = 10;
  
  // define quantity in array that called class
  balloons = new Balloon[quantity];
  
  // using For Loop for define positions and size of each balloon
  for(int n=0; n<quantity; n++){
    
    // define var to random positions and size of each balloon
    float position_x = random(width);
    float position_y = random(width);
    float size = random(20,100);
    
    // define parameters of class to each array object
    balloons[n] = new Balloon(position_x, position_y, size);
  }

}

void draw(){
  // set draw background every round for don't draw balloon overlapping
  background(white);
  
  //call methods in class using for loop
  for (Balloon all_balloon : balloons){
    all_balloon.draw();
    all_balloon.up();
  }
  
}

class Balloon {
  // declare attributes that using in class
  float xpos, ypos, size;
  
  // create a class constructor with parameters
  Balloon (float position_x, float position_y, float sizeBall){
    
    //define value of attributes
    xpos = position_x;
    ypos = position_y;
    size = sizeBall;
  }
  
  void draw(){
    // draw a balloon
    fill(blue);
    stroke(blue); 
    circle(xpos, ypos, size);
    line(xpos, ypos+(size/2), xpos, ypos+(size/2)+size);
  }
  
  void up(){
    // method for balloon floating
    
    if (ypos > 0) {
      // when position_y not over the top margin
      ypos -= 1;
    } 
    else {
      // when position_y beyond the top margin
      ypos = height;  
    }
  
  }
  
}
