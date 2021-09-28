int X = 0;
int a = 5;


void setup(){
  size(1600,800);
}

void draw(){
  translate(X+300,400);
  background(200);
  
  pushMatrix();
  rotate(frameCount/a+2*a);
  noFill();
  circle(0,0,400);
  strokeWeight(3);
  line(-200,0,200,0);
  line(0,-200,0,200);
  line(140,-140,-140,140);
  line(-140,-140,140,140);
  
  
  X += a;
  
  if(X > 1000)
   a = a-6;
  
 if(X < 0)
    a = a+6;
  
  
  popMatrix();
  
  
}
