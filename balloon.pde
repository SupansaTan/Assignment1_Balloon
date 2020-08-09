// Name : Supansa Tantulset
// Date : 9 August 2020
// Can draw Balloons, set color of balloon, balloon can float

// define var colors 
color blue = color(14,77,146);
color white = color(255);

// declare and creating an object of the class
Balloon balloon1;

void setup(){
  size(500,500);
  background(white);
  
  // define parameters of class to an object
  balloon1 = new Balloon(250,200,50);
}

void draw(){
  
  //call methods in class by using the dot syntax (.) after an object
  balloon1.draw();
  balloon1.up();
  
}

/* Try using Class
   syntax : 
     class ClassName {
        ...statements...
     }
*/

class Balloon {
  // declare attributes that using in class
  int xpos, ypos, size;
  
  // define parameters when call class
  Balloon (int position_x, int position_y, int sizeBall){
    
    //define value of attributes
    xpos = position_x;
    ypos = position_y;
    size = sizeBall;
  }
  
  void draw(){
    // set draw background every round for don't draw balloon overlapping
    background(white);
    
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
