
void frameFunction(int x, int y){
  
  int boardHeight = 450;
  
  int boxWidth = 120;
  int boxHeight = 150;
  
  int columns = 9;
  
    //source: Christian Bruhn @ Github{
  for(int i = 0; i < columns; i = i++){
    // }
      if(i < columns){
        fill(255);
        rect(x,y,boxWidth,boxHeight);
        
        y += boxHeight;
        
        if(y >= boardHeight){
          y = 1;
          x = x+boxWidth;
        }
      }
  }
}
