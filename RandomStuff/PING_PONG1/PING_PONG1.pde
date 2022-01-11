
leftBracket l;
rightBracket r;


int BracketSizeX = 16;
int BracketSizeY = 150;

void setup(){
  
  size(1900,960);
  
  
  l = new leftBracket(0,0);
  r = new rightBracket(0,0);
  
}

void draw() {
  
 background(20);
 
 l.move();
 
 r.move();
 
 
  
  
  
  
}
