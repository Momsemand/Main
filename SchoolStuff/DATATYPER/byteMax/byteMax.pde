boolean loop = true;

byte x = 0;

while (loop = true) {
  
  x++;
  
  if(x < 0){
  
  println(x);
  
  x-=1;
  
  println(x);
  
  break;
  }
}
