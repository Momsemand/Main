boolean loop = true;

byte x = 0;


// = sætter loop = true - == sammenligner loop om den er lig med true.. Du burde altså bruge == og ikke =
while (loop = true) {
  
  x++;
  
  if(x < 0){
  
  println(x);
  
  x-=1;
  
  println(x);
  
  break; // Det er HARAM at bruge break!!
  }
}
