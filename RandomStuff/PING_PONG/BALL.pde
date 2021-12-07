
//Inspiration fra processing reference: https://processing.org/examples/mousefunctions.html

class Ball {

  //PVector ballpos = new PVector(950,480);

  // set ball start posotion to middle of window
  int x = width/2;
  int y = height/2;

  int speedX = 8;
  int speedY = 5;


  Ball(int x, int y) {
  }


  void display() {
    rectMode(CENTER);
    stroke(0);
    fill(255);
    rect(x, y, 20, 20);
  }


  void move() {
    this.x += speedX;
    this.y += speedY;

    //wall collision left and right
    if (this.x < 0 || this.x > 1875) {
      speedX = -speedX;
    }

    //wall collision top and bottom
    if (this.y < 0 || this.y > 935) {
      speedY = -speedY;
    }

    //left bracket collision
    if (this.y > l.y && this.y < l.y+bracketSizeY && this.x > l.x-bracketSizeX+6 && this.x < l.x+bracketSizeX) {
      speedX = -speedX;
    }

    //right bracket collision
    /*if(this.y > r.y && this.y < r.y+150 && this.x > r.x-10 && this.x < r.x+18){
     speedX = -speedX;
     }*/
  }
}
