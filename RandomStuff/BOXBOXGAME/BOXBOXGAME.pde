// eksempelkode taget fra https://processing.org/examples/mousefunctions.html

int x = 120;
int y = 220;

int boxSize = 50;
boolean yesBox;

int boxDistance = 480;




void setup() {
  size(800, 500);
  rectMode(RADIUS);
}

void draw() {
  background(255);

  if(mouseX > x-boxSize && mouseX < x+boxSize && mouseY > y-boxSize && mouseY < y+boxSize){
    yesBox = true;
  }
  
  if(mouseX > x+boxDistance-boxSize && mouseX < x+boxDistance+boxSize && mouseY > y-boxSize && mouseY < y+boxSize){
    yesBox = true;
  }
  
  if(mouseX < x-boxSize || mouseX > x+boxSize || mouseY < y-boxSize || mouseY > y+boxSize){
    yesBox = !true;
  }
  
  if(yesBox == true){
   stroke(255); 
  }
  
  if(yesBox == !true){
   stroke(0); 
  }

  square(x, y, boxSize);

  square(x+boxDistance, y, boxSize);


  // mouseFunctions;
}
