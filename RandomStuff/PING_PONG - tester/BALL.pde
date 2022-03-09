
//Inspiration fra processing reference: https://processing.org/examples/mousefunctions.html


boolean bracketHit;

class Ball {

  int x = width/2;
  int y = height/2;

  int speedX = 12;
  int speedY = 6;

  //PVector ballpos = new PVector(width/2,height/2);

  // set ball start posotion to middle of window

  Ball(int x, int y) {
  }

  /*
  void display() {
   rectMode(CENTER);
   stroke(0);
   fill(255);
   rect(x, y, 20, 20);
   
   //wall collision left and right
   if (this.x < -12 || this.x > 1910) {
   
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
   }
   }*/


  void move() {

    bracketHit = false;
   /* 
    if(bracketHit == false){
      speedX = 12;
    }

    speedX = (int)random(0, 1);
     if (speedX == 0) {
     speedX = -12;
     }
     
     if (speedX == 1) {
     speedX = 12;
     }
     
     speedY = (int)random(-10, 10);*/

    this.x += speedX;
    this.y += speedY;




    //wall collision top and bottom
    if (this.y < 0 || this.y > 935) {

      bracketHit = true;

      speedY = -speedY;
      //speedY = (int)random(-10, 10);
    }

    /* //wall collision left and right
     if(this.x > 0 || this.x < 1875){
     
     }*/




    //left bracket collision
    if (this.y > l.y && this.y < l.y+bracketSizeY && this.x > l.x-bracketSizeX+6 && this.x < l.x+bracketSizeX+10) {
      bracketHit = true;
      speedX = -speedX;
      speedY = (int)random(-10, 10);
    }

    //right bracket collision
    if (this.y > r.y && this.y < r.y+bracketSizeY && this.x > r.x+1592-bracketSizeX && this.x < r.x+1592+bracketSizeX+8) {
      bracketHit = true;
      speedX = -speedX;
      speedY = (int)random(-10, 10);
    }
  }


  /*void delayWall() {
   
   //wall collision left and right
   
   speedX = -speedX;
   speedY = (int)random(-10,10);
   
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

  void bracketDelay() {

    if (this.x < -12 || this.x > 1910) {

      speedX = -speedX;
      speedY = (int)random(-10, 10);

      delay(300);

      l.y = 405;
      l.x = 150;

      r.y = 405;
      r.x = 150;
    }
  }

  void ballDelay() {
    
    //THIS ALSO WORKS AS DISPLAY
    
    rectMode(CENTER);
    stroke(0);
    fill(255);


    if (this.x < -12 || this.x > 1910) {

      bracketHit = false;

      delay(1200);

      if (bracketHit == false) {
        speedX = 8;
      }

      this.x = width/2;
      this.y = height/2;


      if (bracketHit == true) {
        speedY = (int)random(-8, 8);
        speedX = (int)random(0, 1);

        if (speedX == 0) {
          speedX = -12;
        }
        if (speedX == 1) {
          speedX = 12;
        }
      }
    }
    rect(x, y, 20, 20);
  }
}
