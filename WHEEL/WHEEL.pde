int x = 0;
int a = 5;


void setup() {
  size(1600, 800);
}

void draw() {
  translate(x+300, 400);
  background(255);

  pushMatrix();
  rotate(frameCount/a+2*a);

  noFill();
  circle(0, 0, 400);

  strokeWeight(3);
  line(-200, 0, 200, 0);
  line(0, -200, 0, 200);
  line(140, -140, -140, 140);
  line(-140, -140, 140, 140);


  x += a;

  if (x > 1000)
    a = a-6;

  if (x < 0)
    a = a+6;


  popMatrix();
}
