/*
   d. 1/11/2021
   Dette er mit første program i Arduinoverdenen.
   Programmet er til at teste blink af lysdioder, mm.

   Af Søren

*/

//------------------------------------

//Def af pins:
uint8_t led1 = 13;
uint8_t led2 = 12;
uint8_t led3 = 11;
uint8_t led4 = 10;
uint8_t led5 = 9;
uint8_t led6 = 8;
uint8_t led7 = 7;
uint8_t led8 = 6;

//------------------------------------

//def af variable

int pause = 40; //til pause

//-----------------------------------

void setup() {
  
  pinMode (led1, OUTPUT);
  pinMode (led2, OUTPUT);
  pinMode (led3, OUTPUT);
  pinMode (led4, OUTPUT);
  pinMode (led5, OUTPUT);
  pinMode (led6, OUTPUT);
  pinMode (led7, OUTPUT);
  pinMode (led8, OUTPUT);



}

void loop() {

  
  digitalWrite(led1, HIGH);
  delay(pause);
  digitalWrite(led2, HIGH);
  delay(pause);
    digitalWrite(led3, HIGH);
  delay(pause);

  digitalWrite(led1, 0);
  
    digitalWrite(led4, HIGH);
  delay(pause);
  
digitalWrite(led2, 0);
  
    digitalWrite(led5, HIGH);
  delay(pause);

 digitalWrite(led3, 0);

  
    digitalWrite(led6, HIGH);
  delay(pause);

  digitalWrite(led4, 0);

  
    digitalWrite(led7, HIGH);
  delay(pause);


      digitalWrite(led5, 0);
  
    digitalWrite(led8, HIGH);
  delay(pause);



  digitalWrite(led6, 0);
delay(pause);
  
  digitalWrite(led7, 0);
delay(pause);
  
  digitalWrite(led8, 0);
  delay(pause);
  

pause = pause -1;

if (pause < 20) pause = 40;



}
