int angle = 0; // det er Haram at skrive simple variabler med stort, det er reserveret til objekter!
int change = 5;// det er Haram at skrive simple variabler med stort, det er reserveret til objekter!
int limit = 40;

// ny variable vi kan nemlig ikke kun teste på x's værdi
boolean direction = false;

int x = 0;  // det er Haram at skrive simple variabler med stort, det er reserveret til objekter! Og du burde kalde x for speed eller andet

// int a = -6; // det er Haram at give variabler navne efter alfabetet. undtaget er x,y,z og  i,j,k

PShape rect1;
PShape rect2;

int noseX = -40;



void setup() {
  size(1600, 600);
  smooth();

  rect1 = createShape(RECT, -20, -30, 50, 150); //LEFT_LEG
  rect2 = createShape(RECT, -20, -30, 50, 150); //RIGHT_LEG
}

void draw() {
  background(255);
  translate(x+200, 350);

  pushMatrix();
  rotate(radians(angle));

  // Her bytter jeg farverne efter hvilken retning han går
  if (direction) {
    rect1.setFill(0);
    rect2.setFill(150);
  } else
  {
    rect1.setFill(150);
    rect2.setFill(0);
  }
  shape(rect1, 0, 0);
  popMatrix();

  pushMatrix();
  rotate(radians(-angle));

  shape(rect2, 0, 0);
  popMatrix();

  noFill();
  circle(5, -160, 80); //HEAD

  fill(255);
  rect(-35, -120, 80, 120); //BODY

  line(-15, -100, -15, -30);
  line(-15, -30, 25, -30);
  line(25, -30, 25, -100); //ARM

  line(-7, -30, -7, -45);
  line(1, -30, 1, -45);
  line(9, -30, 9, -45);
  line(17, -30, 17, -45); //HAND

  strokeWeight(2);
  line(-45, -190, 55, -190);
  fill(0);
  rect(-25, -250, 60, 60); //HAT

  fill(255);
  arc(noseX+5, -160, 25, 20, 0, TWO_PI); //NOSE

  angle = angle + change;

  if (angle >= limit) {
    change *= -1;
  }

  if (angle < -limit) {
    change *= -1;
  }

  // Jeg tester på hvilken retning han går i samt hvad x værdien er. Hvis betingelserne er opfyldt vender han om :)

  if (x > 1200 && direction) { // det er Haram at glemme sine {} paranteser :)
    noseX *= -1;
    direction = false;
  } else if (x<=0 && !direction)
  {
    noseX *= -1;
    direction = true;
  }


  // tæller x op eller ned efter hvilken retning han går i
  if (direction)
  {
    x=x+6;
  } else
  {
    x=x-6;
  }
}
