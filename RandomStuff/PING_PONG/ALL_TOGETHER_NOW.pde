/* NOT UPDATED!
 
 leftBracket l;
 rightBracket r;
 Ball b;
 
 int bracketSizeX = 16;
 int bracketSizeY = 150;
 
 
 void setup(){
 size(1900,960);
 smooth();
 l = new leftBracket(0,0);
 r = new rightBracket(0,0);
 b = new Ball(0,0);
 }
 
 
 void draw(){
 background(20);
 
 l.display();
 l.move();
 
 r.display();
 r.move();
 
 b.display();
 b.move();
 //b.mouseClicked();
 
 }
 
 //------------------------------------------------------------------------------------------
 
 //Inspiration fra processing reference: https://processing.org/examples/mousefunctions.html
 
 class Ball{
 
 //PVector ballpos = new PVector(950,480);
 
 int x = width/2-10;
 int y = height/2-10;
 
 int speedX = 8;
 int speedY = 5;
 
 
 Ball(int x,int y){
 }
 
 
 void display(){
 stroke(0);
 fill(255);
 rect(x,y,20,20);
 }
 
 
 void move(){
 
 x += speedX;
 y += speedY;
 
 if (x < 0 || x > 1875){
 speedX = -speedX;
 }
 
 if (y < 0 || y > 935){
 speedY = -speedY;
 }
 
 if (x-100 > r.x && y-100 < r.y && x-100 > l.x && y-100 < l.y){
 speedX = -speedX;
 }
 
 
 
 }
 }
 
 //------------------------------------------------------------------------------------
 
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
 }*/
