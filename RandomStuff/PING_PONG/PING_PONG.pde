
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
  b = new Ball(0, 0);
}


void draw() {

  background(20);

  //b.delayWall();
  

  l.move();
  l.display();


  r.move();
  r.display();

  b.move();
  b.display();

  //b.mouseClicked();
}

  /*void wallDelay() {


    //wall collision left and right

    speedX = -speedX;
    speedY = (int)random(-10, 10);

    delay(300);

    l.y = 405;
    l.x = 150;

    r.y = 405;
    r.x = 150;

    delay(1200);

    this.x = width/2;
    this.y = height/2;

    speedY = (int)random(-8, 8);
    speedX = (int)random(0, 1);
    if (speedX == 0) {
      speedX = -12;
    }

    if (speedX == 1) {
      speedX = 12;
    }
  }*/
