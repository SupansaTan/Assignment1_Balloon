// Name : Supansa Tantulset
// Date : 11 August 2020
// Can draw Balloons, random color of each balloon, balloon floating

// define var colors 
color blue = color(14,77,146);
color green = color(91,194,54);
color pink = color(243,168,188);
color orange = color(245,173,148);
color white = color(255);

// declare and creating an Array object of the class
Balloon[] balloons;

// create an array of colors
color[] colors = {blue, green, pink, orange};

void setup(){
  size(500,500);
  background(white);
  
  // define number of balloons
  int quantity = 10;
  
  // define quantity in array that called class
  balloons = new Balloon[quantity];
  
  // using For Loop for define positions, size and color of each balloon
  for(int n=0; n<quantity; n++){
    
    // define var to random positions, size and color of each balloon
    float position_x = random(width);
    float position_y = random(width);
    float size = random(20,100);
    int index_color = int(random(colors.length));
    
    // define parameters of class to each array object
    balloons[n] = new Balloon(position_x, position_y, size, index_color);
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
  int get_color;
  
  // create a class constructor with parameters
  Balloon (float position_x, float position_y, float sizeBall, int index_color){
    
    //define value of attributes
    xpos = position_x;
    ypos = position_y;
    size = sizeBall;
    get_color = index_color;
  }
  
  void draw(){
    // draw a balloon
    fill(colors[get_color]);
    stroke(colors[get_color]); 
    circle(xpos, ypos, size);
    line(xpos, ypos+(size/2), xpos, ypos+(size/2)+size);
  }
  
  void up(){
    // method for balloon floating
    
    if (ypos > 0 && xpos > 0) {
      // when position_y not over the top margin
      // and position_x not over the right margin
      ypos -= 1;
      xpos += 1;
    } 
    else {
      // when position_x and position_y beyond the top margin
      ypos = height;
      xpos = random(width);
    }
  
  }
  
}
