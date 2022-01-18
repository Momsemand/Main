class Firkant {
  // klassens attributter/ tilstand
  float x, y;

  //konstroktøren
  Firkant() {
    generate(); // OPGAVE 1
  }

  // klassens metoder

  // find to tilfældige værdier inden for canvas størrelsen
  void generate() {
    this.x = random(600);
    this.y = random(400);
  }

  // tegn firkant på canvas
  void drawFirkant() {
    fill(random(256), random(256), random(256)); //OPGAVE 2
    square(x, y, random(60, 140));
  }
}

//-------------------------------------FIRKANT-CIRKEL-----------------------------------------------------

class Cirkel { //OPGAVE 5

  float x, y;

  Cirkel() {
    generate();
  }

  void generate() {
    this.x = random(600);
    this.y = random(400);
  }

  void drawCircle() {
    fill(random(256), random(256), random(256)); //OPGAVE 2
    ellipse(x, y, random(40, 160),random(40,160)); // OPGAVE 3
  }
}

//----------------------------------------CIRKEL-TREKANT--------------------------------------------------

class Trekant { //OPGAVE 6

  float x, y;

  Trekant() {
    generate();
  }

  void generate() {
    this.x = random(600);
    this.y = random(400);
  }

  void drawTriangle() {
    fill(random(256), random(256), random(256)); //OPGAVE 2
    triangle(x, y, x+random(30, 90), y+random(20, 180), x-random(30, 90), y+random(20, 180)); // OPGAVE 3 & 7
  }
}

//-------------------------------------------TREKANT-REKTANGEL-----------------------------------------------

class Rektangel { //OPGAVE 6

  float x, y;

  Rektangel() {
    generate();
  }

  void generate() {
    this.x = random(600);
    this.y = random(400);
  }

  void drawRect() {
    fill(random(256), random(256), random(256)); //OPGAVE 2
    rect(x, y, random(40, 160), random(40, 160)); // OPGAVE 3 & 7
  }
}


//------------------------------------------------------------------------------------------

// initiering af variablen f
Firkant f;
Cirkel d;
Trekant t;
Rektangel r;

int yes = 100;

void setup() {
  size (600, 400);
}

void draw() {
  // initiering af objektet f
  f = new Firkant();
  d = new Cirkel();
  t = new Trekant();
  r = new Rektangel();

  // kald metoden generate som laver en tilfældig x og y pos
  //f.generate();
  // tegner firkanten på canvas
  
  int i = (int)random(4);

    if (i == 0) {
      f.drawFirkant();
      delay(yes);
    }

    if (i == 1) {
      d.drawCircle();
      delay(yes);
    }

    if (i == 2) {
      t.drawTriangle();
      delay(yes);
    }

    if (i == 3) {
      r.drawRect();
      delay(yes);
    }
  



  //f = new Firkant(); //OPGAVE 4
  //f.drawEllipse();
}
