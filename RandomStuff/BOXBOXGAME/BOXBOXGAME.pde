
void setup(){
  size(800,500);
 
}

void draw(){
   background(0);
  pushMatrix();
  
    rect(mouseX-30,mouseY-30,60,60);
    
  popMatrix();
  
  rect(500,220,60,60);
  
}
