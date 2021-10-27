/*
//Inspiration fra processing reference: https://processing.org/examples/mousefunctions.html

class Ball{
  
  //PVector ballpos = new PVector(950,480);
  
  int x = width/2-10;
  int y = height/2-10;

  int speedX = 8;
  int speedY = 5;
  
  
  Ball(int x,int y){
  }
  
  
  void display(){
   stroke(0);
   fill(255);
   rect(x,y,20,20);
  }
  
  
  void move(){
    
    x += speedX;
    y += speedY;
    
    if (x < 0 || x > 1875){
      speedX = -speedX;
    }
    
    if (y < 0 || y > 935){
      speedY = -speedY;
    }
    
    if (x-100 > r.x && y-100 < r.y && x-100 > l.x && y-100 < l.y){
      speedX = -speedX;
    }
    
   
    
  }
}
  */

  
