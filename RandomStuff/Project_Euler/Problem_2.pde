int j = 1;

  for(int i=0;i<40;i++){

      //println(i);
      j = i+j;
      
      if(j%2==0){
        println(j);
      }
      if(i>40){
        break;  
      }

  }
