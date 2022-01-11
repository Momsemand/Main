class leftBracket {

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

class rightBracket {

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
