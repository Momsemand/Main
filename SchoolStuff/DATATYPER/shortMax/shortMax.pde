boolean loop = true;

short x = 0;

while (loop = true) {
  
  x++;
  
  if(x < 0){
  
  println(x);
  
  x-=1;
  
  println(x);
  
  break;
  }
}
