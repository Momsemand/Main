
long x = 1;
long y = 0;
long z = 0;

long t = 0;

long a = 0;
long b;
long c;

boolean yes = true;

y = x;

while(yes == true){ //<>//

b = y+a;
c = y+b;

   y = c;
   z = a;
 //<>//
   println(t);
   t = t+c;

   
   if(t>4000000){
     yes = !true;
   }
   
} 
