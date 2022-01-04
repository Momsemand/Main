
// eksempelkode brugt fra 'The Coding Train' på youtube:
//https://youtu.be/XwfOVFelLoo + https://youtu.be/NrwaKOsplZk

int speedY = 4;

class leftBracket {

  int x = 150;
  int y = 405;

  //int speedY = 20;


  leftBracket(int x, int y) {
  }


  void display() {
    rectMode(CORNER);
    stroke(0);
    fill(255);
    rect(x, y, bracketSizeX, bracketSizeY); //LEFT BRACKET
  }


  void move() { //ONLY LEFT BRACKET

    if (this.y <= 0) {
      this.y += speedY;
    }

    if (this.y >= 808) {
      this.y += -speedY;
    }

    if (key == CODED) { //FROM BLOCK OR BLOCKTANK

      if (keyCode == LEFT && keyPressed) {
        this.y += -speedY;
      }

      if (keyCode == RIGHT && keyPressed) {
        this.y += speedY;
      }
    }
  }
}

// PROBLEM = HVORDAN FLYTTER MAN 2 FORSKELLIGE OBJEKTER PÅ SAMME TID
// TURNS OUT YOU CAN'T
//=======================================================================================


class rightBracket {

  int x = 150;
  int y = 405;

  //int speedY = 20;

  rightBracket(int x, int y) {
  }

  void display() { //https://youtu.be/XwfOVFelLoo + https://youtu.be/NrwaKOsplZk
    stroke(0);
    fill(255);
    rect(x+1592, y, bracketSizeX, bracketSizeY); //RIGHT BRACKET
  }



  void move() {

    if (this.y <= 0) {
      this.y += speedY;
    }

    if (this.y >= 808) {
      this.y += -speedY;
    }

    if (key == CODED) { //FROM BLOCK OR BLOCKTANK

      if (keyCode == LEFT && keyPressed) {
        this.y += -speedY;
      }

      if (keyCode == RIGHT && keyPressed) {
        this.y += speedY;
      }
    }
  }
}
