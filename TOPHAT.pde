void setup(){
frameRate(60);
}

void settings(){
size(400,600);
}

void draw(){
  
background(255);

pushMatrix();
translate(200,300);
//rotate(3);
rotate(frameCount*0.02);

strokeWeight(3);

circle(0,0,300);

rect(-80,-80,55,55);
rect(20,-80,55,55);

fill(255,255,255);
circle(0,0,100);

noFill();
arc(0,65,150,145,0,PI,CHORD);


strokeWeight(10);

line(-150,-130,150,-130);

fill(0);
rect(-70,-250,135,120);
noFill();

popMatrix();
}
