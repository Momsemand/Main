 /* class Bullet {
    
    PVector playerpos = new PVector(835.0,445.0);
    
    float  barrelAngle = (atan2(mouseY-playerpos.y,mouseX-playerpos.x));  //ANGLE AT MOUSE POINTER
    
    Pshape bullet = createShape(ELLIPSE,playerpos,8,8);
    
    PShape bullet;
    int bulletSpeed = 6;
    
    
    shape(bullet);
    
    rotate(barrelAngle);
    
   // playerpos1.x = playerpos.x;
   // playerpos1.y = playerpos.y;
    
    playerpos1.x += cos(barrelAngle)*bulletSpeed;
    playerpos1.y += sin(barrelAngle)*bulletSpeed;
   
    //playerpos1.x += bulletSpeed;
   // playerpos1.y += bulletSpeed;
  
 /* if(playerpos1.x <= 51 && playerpos1.x > 852){
  }
  
  if(playerpos1.y <= 3 && playerpos1.y > 303){
  }
}

  if(playerpos1.x <= 51 && playerpos1.x > 852 && playerpos1.y <= 3 && playerpos1.y > 303){
    playerpos1.x = x+45;
    playerpos1.y = y+155;
  }
  }*/
