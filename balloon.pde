// Name : Supansa Tantulset
// Date : 8 August 2020
// Draw line, rectangle, circle and ellipse with hardcode

void setup(){
  // setup() function is run once, when the program starts
  
  // fix size of window 
  // syntax : size(width,height) 
  size(500,500);
}

void draw(){
  // draw() function continuously executes the lines of code contained inside its block until the program is stopped
  // or called "noLoop()" in this function. 
  
  // line
  // syntax : line(position x1, position y1, position x2, position y2)
  line(100,70,150,70);
  line(200,50,200,100);
  line(250,50,300,100);
  line(350,100,400,50);
  
  // rectangle 
  // syntax : rect(position x, position y, width, height)
  rect(150,150,200,50);
  
  // circle
  // syntax : circle(position x, position y, extent)
  circle(250,290,70);
  
  // ellipse
  // syntax : ellipse(position x, position y, width, height)
  ellipse(250,410,100,50);
  
  // text above of each shape
  // syntax : text(char number or string, position x, position y)
  fill(0); // set color of text is black
  text("Draw line",225,40);
  text("Draw Rectangle",210,135);
  text("Draw Circle",220,240);
  text("Draw Ellipse",220,370); 
  
  // called noLoop() for stop the code in draw()
  noLoop();
}
