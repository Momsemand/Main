void setup(){
  frameRate(60);
}

void settings(){

size(800,600);
}

void draw(){

background(255);

pushMatrix();
translate(400,300);
rotate(frameCount*0.05);

strokeWeight(3.5);

line(-130,80,140,80);

line(-30,15,-30,-220);
line(-30,-220,40,-220);
line(40,-220,40,15);

line(40,-80,90,-80);
line(90,-80,90,15);

line(90,-80,140,-80);
line(140,-80,140,80);

line(-30,-80,-80,-80);
line(-80,-80,-80,15);

line(-80,-80,-130,-80);
line(-130,-80,-130,80);

popMatrix();
}
