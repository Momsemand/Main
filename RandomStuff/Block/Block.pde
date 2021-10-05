//PShape rect;
float xVal=100;
float yVal=100;

int X = 100;
int Y = 380;

boolean okay1 = true;
int totalPresses1 = 0;
boolean okay2 = true;
int totalPresses2 = 0;


void setup(){
  
size(1920,1080);
smooth();

//rect = createShape(GROUP);

key = RIGHT;
key = LEFT;
key = UP;
key = DOWN;

}


void draw(){
  background(255);
  strokeWeight(3.5);
  line(0,600,3000,600);
  
 pushMatrix();
 rect(X,(Y+100),100,120);
 translate(X,Y);
 popMatrix();
  
//PShape Block = createShape(RECT,X,Y,100,120);
//rect.addChild(Block);
  
 fill(50,50,50);
 rect(0,600,3000,600);
 



   if(key==CODED){
     
     
    if(keyCode == RIGHT || X < 100)
     X = X+5;
   
    
    if(keyCode==LEFT || X > 1700)
      X = X-5;
    
    
    if(keyCode==UP || Y > 380)
      Y = Y-4;
    
    
    if(keyCode==DOWN || Y < 20)
      Y = Y+4;
    
  }
  
}
