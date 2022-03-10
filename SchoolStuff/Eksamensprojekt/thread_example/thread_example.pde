
//LEARNED FROM THIS:
//IF DELAY IN THREAD, PUT IT AT THE START OF THE FUNCTION, ELSE NO DELAY
//THREAD CAN'T DO THE DISPLAY - USE DRAW
//HOW IT WORKS: THREAD IS SEPERATE FUNCTION RUNNING THROUGH/ALONGSIDE DRAW FUNCTION


int i=0;
int j=0;
int k=0;


void setup() {
  size(400, 400);
  textSize(80); 
  background(200);
}

void draw() {
  thread("yes");
  thread("no");
  
  k++;

  background(200);
  fill(255);
  text(i, 100, 100);
  text(j, 100, 300);
  text(k,100,200);
}


void yes() {
  delay(2000);
  i++;
}

void no() {
  delay(5000);
  j++;
}
