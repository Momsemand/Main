class Ball{
  
  //PVector ballpos = new PVector(950,480);
  
  int x = 950;
  int y = 480;

  int speedX = 5;
  int speedY = 5;
  
  float angle;
  
  Ball(int x,int y){
  }
  
  
  void display(){
   stroke(0);
   fill(255);
   ellipse(x,y,20,20);
  }
  
  
  void move(){
    
    
    
    if(x < 0 || x > 1900 || y < 0 || y > 960){
      angle = -angle;
    }
    
    
  }
  
}
