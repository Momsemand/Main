int x1 = 300;
int y1 = 300;

void setup(){
  size (600,600);
  noLoop();
}

void draw(){

  // make frame behind alien
  frameFunction(0,0);
  frameFunction(300,0);
  
  frameFunction(0,300);
  frameFunction(300,300);
  
  alien1Function(300,0);
  
  alien2Function(0,300);
  
  alien3Function(300,300);
  
  //divide screen i four squares
  line(300,0,300,600);//vertical line
  line (0,300,600,300); //Horizontal line
  
  // make body and color black
  fill(0,0,0);
  rect(125,120,50,100);
  
  // make head and color white
  fill(255,255,255);
  circle(150,75,100);
  
  // make eyes and color black
  fill(0,0,0);
  ellipse(125, 75, 25, 50);
  ellipse(175, 75, 25, 50);
  
  //make legs and thick
  strokeWeight(5);
  line(125,220,110,250);
  line(175,220,195,250);
  
  textSize(32);
  text("Allie", 123, 270);
}


void frameFunction(int x, int y ){
  rect(10+x,10+y,280,280);
}

void alien1Function(int x,int y){
    
  // make body and color black
  fill(0,0,0);
  rect(125+x,120,50,100);
  
  // make head and color white
  strokeWeight(5);
  fill(255,255,255);
  circle(150+x,75,100);
  
  // make eyes and color black
  fill(0,0,0);
  ellipse(125+x, 75, 25, 50);
  ellipse(175+x, 75, 25, 50);
  
  //make legs and thick
  strokeWeight(5);
  line(125+x,220,110+x,250);
  line(175+x,220,195+x,250);
  
  textSize(32);
  text("Steve", 116+x, 270);
}

void alien2Function(int x,int y){
    
  // make body and color black
  fill(0,0,0);
  rect(125+x,120+y,50,100);
  
  // make head and color white
  strokeWeight(5);
  fill(255,255,255);
  circle(150+x,75+y,100);
  
  // make eyes and color black
  fill(0,0,0);
  ellipse(125+x, 75+y, 25, 50);
  ellipse(175+x, 75+y, 25, 50);
  
  //make legs and thick
  strokeWeight(5);
  line(125+x,220+y,110+x,250+y);
  line(175+x,220+y,195+x,250+y);
  
  textSize(32);
  text("Bob", 125+x, 270+y);
}

void alien3Function(int x,int y){
    
  // make body and color black
  fill(0,0,0);
  rect(125+x,120+y,50,100);
  
  // make head and color white
  strokeWeight(5);
  fill(255,255,255);
  circle(150+x,75+y,100);
  
  // make eyes and color black
  fill(0,0,0);
  ellipse(125+x, 75+y, 25, 50);
  ellipse(175+x, 75+y, 25, 50);
  
  //make legs and thick
  strokeWeight(5);
  line(125+x,220+y,110+x,250+y);
  line(175+x,220+y,195+x,250+y);
  
  textSize(32);
  text("Karl", 125+x, 270+y);
}
