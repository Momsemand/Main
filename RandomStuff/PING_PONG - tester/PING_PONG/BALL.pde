
//Inspiration fra processing reference: https://processing.org/examples/mousefunctions.html


boolean bracketHit;

int bx = width/2;
int by = height/2;

class Ball {

  int speedX = 12;
  int speedY = 6;

  // set ball start posotion to middle of window

  Ball(int x, int y) {
  }


  void display() {
    rectMode(CENTER);
    stroke(0);
    fill(255);
    square(bx, by, 20);
  }

  void pointDelayBrackets() {
    //wall collision left and right

    delay(300);

    l.y = 405;
    l.x = 150;

    r.y = 405;
    r.x = 150;
  }

  void pointDelayBall() {

    bx = width/2;
    by = height/2;

    speedX = -speedX;
    speedY = (int)random(-10, 10);

    speedY = (int)random(-8, 8);
    speedX = (int)random(0, 1);
   
    if (speedX == 0) {
      speedX = -12;
    }

    if (speedX == 1) {
      speedX = 12;
    }
  }


  void move() {

    bx += speedX;
    by += speedY;

    //wall collision top and bottom
    if (by < 0 || by > 935) {

      speedY = -speedY;
      //speedY = (int)random(-10, 10);
    }

    //left bracket collision
    if (by > l.y && by < l.y+bracketSizeY && bx > l.x-bracketSizeX+6 && bx < l.x+bracketSizeX+10) {
      speedX = -speedX;
      speedY = (int)random(-10, 10);
    }

    //right bracket collision
    if (by > r.y && by < r.y+bracketSizeY && bx > r.x+1592-bracketSizeX && bx < r.x+1592+bracketSizeX+8) {
      speedX = -speedX;
      speedY = (int)random(-10, 10);
    }
  }

  
}
