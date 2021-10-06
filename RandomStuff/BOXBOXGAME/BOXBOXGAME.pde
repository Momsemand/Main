// eksempelkode taget fra https://processing.org/examples/mousefunctions.html

int x = 120;
int y = 220;


void setup(){
  size(800,500);
}

void draw(){
   background(0);
  pushMatrix();
  
    rect(x,y,100,100);
    
  popMatrix();
  
  rect(580,220,100,100);
 // mouseFunctions;
  
}
