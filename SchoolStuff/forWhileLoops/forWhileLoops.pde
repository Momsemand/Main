
//OPGAVE 1
/*
    String s = "Hej med dig";
for(int i=0;i<s.length();i++){
  if(i==5);
  println(s.charAt(5));
}
*/
//--------------------------------------------------------------------------------------------------

// OPGAVE 2
/*
for(int i=0;i<30;i++){
  if(i>10 && i<21){
        println(i);
      }
}
*/
/*
boolean found = true;
int i = 0;
while(found == true){
  i++;
    if(i>10 && i<21){
      println(i);
    }
    if(i>30){
       found = false;
    }
  }
*/

//------------------------------------------------------------------------------------------------

//OPGAVE 3
/*
String s  = "Dette er en sætning med mange e'er. Men hvor mange er der?";
int j = 0;

for(int i=0;i<s.length();i++){
  if(s.charAt(i)=='e'){
    println('e');
    j++;
  }
}
println("Der er:" ,j,"e'er");
*/
/*
boolean found=true;
int i = 0;
while(found && i<57){
    i++;
    if(s.charAt(i) =='e'){
      println('e');
      j++;
      if(i>s.length()){
      found = !true;
      }
    }

}
println(j);
*/
//---------------------------------------------------------------------------------------------
//OPGAVE 4
/*int[] numbers= {39,19,41,6,4,16,6,16,35,99,41,48,99,95};

String s = "Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet. Ja, så er det rigtigt :)";

for(int i=0;i<14;i++){
    int j=numbers[i];
    print(s.charAt(numbers[i]));
}*/

//----------------------------------------------------------------------------------------------
//OPGAVE 5
/*
String s = "Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet. Ja, så er det rigtigt :)";

print(s.length());
*/
//----------------------------------------------------------------------------------------------
//OPGAVE 6

String s = "Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet. Ja, så er det rigtigt :)";

String s1 = s.substring(83,s.length());
println(s1);

//----------------------------------------------------------------------------------------------
//OPGAVE 7
