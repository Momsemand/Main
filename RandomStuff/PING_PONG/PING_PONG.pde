
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

  l.display();
  l.move();

  r.display();
  r.move();

  b.display();
  b.move();
  //b.mouseClicked();
}
