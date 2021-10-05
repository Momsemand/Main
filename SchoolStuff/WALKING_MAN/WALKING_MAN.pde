int Angle = 0;
int Change = 5;
int LIMIT = 40;

int X = 0;

PShape rect1;
PShape rect2;

int noseX = -40;

boolean direction = false;

void setup(){
  size(1600,600);
  smooth();
  
  rect1 = createShape(RECT,-20,-30,50,150); //LEFT_LEG
  rect2 = createShape(RECT,-20,-30,50,150); //RIGHT_LEG
}

void draw(){
  background(255);
  
  translate(X+200,350);
  
rect1.setFill(0);
rect2.setFill(150);

 pushMatrix();
  
    rotate(radians(Angle));
    
    if (direction) {
      rect1.setFill(0);
      rect2.setFill(150);
    } else
    {
      rect1.setFill(150);
      rect2.setFill(0);
    }
    
    shape(rect1,0,0);
    
 popMatrix();
  
 pushMatrix();
   rotate(radians(-Angle));
   shape(rect2,0,0);
    
 popMatrix();
    
    noFill();
   circle(5,-160,80); //HEAD
  
  fill(255);
  rect(-35,-120,80,120); //BODY
  
  line(-15,-100,-15,-30);
  line(-15,-30,25,-30);
  line(25,-30,25,-100); //ARM
  
  line(-7,-30,-7,-45);
  line(1,-30,1,-45);
  line(9,-30,9,-45);
  line(17,-30,17,-45); //HAND
  
  strokeWeight(2);
  line(-45,-190,55,-190);
  fill(0);
  rect(-25,-250,60,60); //HAT
  
  fill(255);
  arc(noseX+5,-160,30,20,0,TWO_PI); //NOSE
  
  Angle = Angle+Change;
  
  if(Angle >= LIMIT){
    Change *= -1;
  }
  
  if(Angle < -LIMIT){
    Change *= -1;
  }
  
  if(X > 1200 && direction){
    noseX *= -1;
    direction = false;
  } else if (X <= 0 && !direction)
  {
    noseX *= -1;
    direction = true;
  }
 
  if(direction){
    X = X + 6;
  } else 
  {
    X = X - 6;    
  }
}
