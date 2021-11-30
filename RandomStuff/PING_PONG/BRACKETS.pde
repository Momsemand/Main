
// eksempelkode brugt fra 'The Coding Train' på youtube:
//https://youtu.be/XwfOVFelLoo + https://youtu.be/NrwaKOsplZk


class leftBracket {
  
  int x = 150;
  int y = 405;
  
  int speedY = 5;
  
  
  leftBracket(int x, int y){
  }


  void display(){
    stroke(0);
    fill(255);
    rect(x,y,16,150); //LEFT BRACKET
  }


  void move(){
    
    if(y <= 0){
      y = y + speedY;
    }
  
    if(y >= 808){
      y = y - speedY;
    }
  
    if(key == CODED){ //FROM BLOCK OR BLOCKTANK
  
      if(keyCode == LEFT){
       y += -speedY;
      }
     
      if(keyCode == RIGHT){
         y += speedY;
      }
    }
  }
}

 // PROBLEM = HVORDAN FLYTTER MAN 2 FORSKELLIGE OBJEKTER PÅ SAMME TID
//=======================================================================================


class rightBracket {
  
  int x = 150;
  int y = 405;
  
  int speedY = 5;
  
  rightBracket(int x, int y){
  }

  void display(){ //https://youtu.be/XwfOVFelLoo + https://youtu.be/NrwaKOsplZk
    stroke(0);
    fill(255);
    rect(x+1592,y,16,150); //LEFT BRACKET
  }



  void move(){
    
    if(y <= 0){
      y = y + speedY;
    }
  
    if(y >= 808){
      y = y - speedY;
    }
  
    if(key == CODED){ //FROM BLOCK OR BLOCKTANK
  
      if(keyCode == LEFT){
       y += -speedY;
       }
     
      if(keyCode == RIGHT){
         y += speedY;
      }
    }
  }
}
