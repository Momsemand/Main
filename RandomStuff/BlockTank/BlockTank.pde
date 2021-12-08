int x = 395;
int y = 145;

int speedX = 4;
int speedY = 3;

PVector playerpos = new PVector(835.0, 445.0);
PVector playerpos1 = new PVector(834.0, 446.0);

//Eksempelkode linje taget fra bruger Chrisrir, linje 77. -- https://forum.processing.org/one/topic/basic-shooting-and-dection.html
float  barrelAngle = (atan2(mouseY-playerpos.y, mouseX-playerpos.x));  //ANGLE AT MOUSE POINTER

/*
PShape bullet;
bullet = createShape(ELLIPSE,playerpos,8,8);


int bulletSpeed = 6;
*/

//===================================================================================

void setup() {
  size(1800, 900);
  smooth();
}


//===================================================================================





//=====================================================================================


void draw() {
  background(220);

  strokeWeight(1.5);
  line(101, 108, 101, 819);
  line(101, 819, 1673, 819);
  line(1673, 819, 1673, 108);
  line(1673, 108, 101, 108);


  pushMatrix();
  translate(x,y);

  strokeWeight(2);
  fill(50);
  rect(x, y+100, 90, 110); //BODY

  popMatrix();


  pushMatrix();
  translate(playerpos.x, playerpos.y);
  barrelAngle = (atan2(mouseY-playerpos.y, mouseX-playerpos.x)+radians(-90)); 
  rotate(barrelAngle);
  fill(100);
  rect(-5, 0, 10, 120); //GUN

  popMatrix();


  pushMatrix();
  translate(x, y);

  fill(100);
  circle(x+45, y+155, 50); //HEAD

  popMatrix();

  /*if(mousePressed){
   shape(bullet);
   
   rotate(barrelAngle);
   
   // playerpos1.x = playerpos.x;
   // playerpos1.y = playerpos.y;
   
   playerpos1.x += cos(barrelAngle)*bulletSpeed;
   playerpos1.y += sin(barrelAngle)*bulletSpeed;
   
   //playerpos1.x += bulletSpeed;
   // playerpos1.y += bulletSpeed;
   
   if(playerpos1.x <= 51 && playerpos1.x > 852){
   }
   
   if(playerpos1.y <= 3 && playerpos1.y > 303){
   }
   }*/

  if (playerpos1.x <= 51 && playerpos1.x > 852 && playerpos1.y <= 3 && playerpos1.y > 303) {
    playerpos1.x = x+45;
    playerpos1.y = y+155;
  }


  //========================================================================================
  
  if (x <= 50) {
    x += speedX;
    playerpos.x += 2*speedX;
  }

  if ( x >= 792) {
    x += -speedX;
    playerpos.x += -2*speedX;
  }

  if (y >= 305) {
    y += -speedY;
    playerpos.y += -2*speedY;
  }

  if (y <= 3) {
    y += speedY;
    playerpos.y += 2*speedY;
  }
  
  
  //========================================================================================
  
  
  if(key==CODED){
   
   
   if(keyCode == RIGHT && keyPressed){
   x += speedX;
   playerpos.x += 2*speedX;
   }
   
   if(keyCode == LEFT && keyPressed){
   x += -speedX;
   playerpos.x += -2*speedX;
   }
   
   if(keyCode == UP && keyPressed){
   y += -speedY;
   playerpos.y += -2*speedY;
   }
   
   
   if(keyCode == DOWN && keyPressed){
   y += speedY;
   playerpos.y += 2*speedY;
   }
   }

  //=========================================================================================

/*
  if (key==CODED) {


    if (keyCode == RIGHT) {
        x += speedX;
        playerpos.x += 2*speedX;
    }

    if (keyCode == LEFT) {
      x += -speedX;
      playerpos.x += -2*speedX;
    }

    if (keyCode == UP) {
      y += -speedY;
      playerpos.y += -2*speedY;
    }


    if (keyCode == DOWN) {
      y += speedY;
      playerpos.y += 2*speedY;
    }
  }

  if (x <= 50) {
    x += speedX;
    playerpos.x += 2*speedX;
  }

  if ( x >= 792) {
    x += -speedX;
    playerpos.x += -2*speedX;
  }

  if (y >= 304) {
    y += -speedY;
    playerpos.y += -2*speedY;
  }

  if (y <= 3) {
    y += speedY;
    playerpos.y += 2*speedY;
  }*/
}

//=======================================================================================


//======================================================================================

/*
void keyPressed(){
 if(key == 'w' || key == 'W' || y > 302){
 y = -speedY;
 playerpos.y += -2*speedY;
 }
 
 if(key == 's' || key == 'S' || y < 4){
 y += speedY;
 playerpos.y += 2*speedY;
 }
 
 if(key == 'd' || key == 'D' || x < 55){
 x += speedX;
 playerpos.x += 2*speedX;
 }
 
 if(key == 'a' || key == 'A' || x > 852){
 x += -speedX;
 playerpos.x += -2*speedX;
 }
 }*/

//=======================================================================================
