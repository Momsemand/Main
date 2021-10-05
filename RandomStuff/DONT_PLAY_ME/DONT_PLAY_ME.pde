int fingerAngle=80;
int angleChange=5;
int angleLIMIT=80;


void setup(){
  size(1300,800);
}

void draw(){

  background(255);

pushMatrix();
  
  drawHAND1();

fingerAngle += angleChange;

if(fingerAngle>angleLIMIT || fingerAngle<0)
  {
   angleChange = -angleChange;
   fingerAngle += angleChange;
  }

rotate(radians(fingerAngle));

}
// HAND 1

void drawHAND1(){
  
  strokeWeight(3.5);
  translate(400,450);

  line(-180,90,90,90); //bund linje

  line(-80,25,-80,-210);
  line(-80,-210,-10,-210);
  line(-10,-210,-10,25); //middle finger

  line(-10,-70,40,-70);
  line(40,-70,40,25); //middle right finger

  line(40,-70,90,-70);
  line(90,-70,90,90); //right finger

  line(-80,-70,-130,-70);
  line(-130,-70,-130,25); //middle left finger

  line(-130,-70,-180,-70);
  line(-180,-70,-180,90); //left finger

popMatrix();
  }




drawHAND2(){
  
pushMatrix();

translate(900,450);

fingerAngle += angleChange;

/*if(fingerAngle>-angleLIMIT || fingerAngle>0)
  {
   angleChange=-angleChange;
   fingerAngle+=angleChange;
  }*/

rotate(radians(fingerAngle));

//HAND 2

strokeWeight(3.5);

  line(-180,90,90,90); //bund linje

  line(-80,25,-80,-210);
  line(-80,-210,-10,-210);
  line(-10,-210,-10,25); //middle finger

  line(-10,-70,40,-70);
  line(40,-70,40,25); //middle right finger

  line(40,-70,90,-70);
  line(90,-70,90,90); //right finger

  line(-80,-70,-130,-70);
  line(-130,-70,-130,25); //middle left finger

  line(-130,-70,-180,-70);
  line(-180,-70,-180,90); //left finger

popMatrix();
}


void drawHANDS(){

drawHAND1();
drawHAND2();

}
