
leftBracket l;
rightBracket r;
Ball b;

int bracketSizeX = 16;
int bracketSizeY = 150;




void setup() {
  size(1900, 960);
  smooth();
  l = new leftBracket(0, 0);
  r = new rightBracket(0, 0);
  b = new Ball(width/2, height/2);
}


void draw() {

  background(20);

  //b.delayWall();
  

  l.move();
  //l.display();


  r.move();
  //r.display();

  b.move();
  
  //b.bracketDelay();
  
  r.display();
  l.display();
  

  b.display();

  //b.mouseClicked();
  
  if (bx < -12 || bx > 1910) {
    delay(1000);
    thread("b.pointDelayBrackets");
    thread("b.pointDelayBall");
  }
  
}
