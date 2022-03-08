

int x1 = 200;
int x2 = 400;
int y = 400;
int y1 = 400;


void setup() {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(100);
  Function2();
  rect(200, y1, 100, 100);
  thread("Function1");
  //Function1();
  //y += -5;
}

void Function1() {

  y1 += 2;
}

void Function2() {
  rect(600, y, 100, 100);
  y += -2;
}
