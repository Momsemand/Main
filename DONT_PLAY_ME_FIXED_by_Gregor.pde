int Angle = 0;
int Change = 2;
final int LimitA = 65;

void setup()
{
  size(1200, 800);
  smooth();
  frameRate(60);
}

void draw()
{
  background(255);
  pushMatrix();
  drawFinger();
  Angle += Change;

  // if the object has moved past its limit,
  // reverse direction and set within limits.
  if (Angle > LimitA || Angle < 0)
  {
    Change = -Change;
    Angle += Change;
  }
  popMatrix();
}

void drawFinger()
{

  drawLeftFinger();
  drawRightFinger();

}

void drawLeftFinger()
{
  pushMatrix();
  translate(900, 400);
  rotate(radians(-Angle));
 strokeWeight(3.5);

line(-130,90,140,90); //bund linje

line(-30,25,-30,-210);
line(-30,-210,40,-210);
line(40,-210,40,25); //middle finger

line(40,-70,90,-70);
line(90,-70,90,25); //middle right finger

line(90,-70,140,-70);
line(140,-70,140,90); //right finger

line(-30,-70,-80,-70);
line(-80,-70,-80,25); //middle left finger

line(-80,-70,-130,-70);
line(-130,-70,-130,90); //left finger
  popMatrix();
}

void drawRightFinger()
{
  pushMatrix();
  translate(300, 400);
  rotate(radians(Angle));
 strokeWeight(3.5);

line(-130,90,140,90); //bund linje

line(-30,25,-30,-210);
line(-30,-210,40,-210);
line(40,-210,40,25); //middle finger

line(40,-70,90,-70);
line(90,-70,90,25); //middle right finger

line(90,-70,140,-70);
line(140,-70,140,90); //right finger

line(-30,-70,-80,-70);
line(-80,-70,-80,25); //middle left finger

line(-80,-70,-130,-70);
line(-130,-70,-130,90); //left finger
  popMatrix();
}
