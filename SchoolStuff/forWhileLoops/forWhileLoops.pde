
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
  if(i>10 && i<=20){
        println(i);
      }
}
*/
/*
boolean found = true;
int i = 0;
while(found == true){
  i++;
    if(i>10 && i<=20){
      println(i);
    }
    if(i>30){
       found = false;
    }
  }
*/

//------------------------------------------------------------------------------------------------

//OPGAVE 3

String s  = "Dette er en sætning med mange e'er. Men hvor mange er der?";
int j = 0;

for(int i=0;i<s.length();i++){
  if(s.charAt(i)=='e'){
    print('e');
    j++;
  }
}
println(" Der er:" ,j,"e'er");

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
/*
String s = "Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet. Ja, så er det rigtigt :)";

String s1 = s.substring(83,s.length());
println(s1);
*/
//----------------------------------------------------------------------------------------------
//OPGAVE 7
/*
String s = "Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet. Ja, så er det rigtigt :)";

String s1 = s.substring(83,85);
println(s1);
*/
//----------------------------------------------------------------------------------------------
//OPGAVE 8
/*
String s = "Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet. Ja, så er det rigtigt :)";
String s1 = s.toUpperCase();

println(s1);
*/
//----------------------------------------------------------------------------------------------
//OPGAVE 9
/*
String s = "Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet. Ja, så er det rigtigt :)";
String s1 = s.toLowerCase();

println(s1);
*/
//-----------------------------------------------------------------------------------------------
//OPGAVE 10
/*
String str2 =  "Nej";
if (str2.equals("ja"))
  println ("Det gør den!");
 else
  println ("Det gør den ikke!");
 */
 /*
a) hvad udskriver programmet?

Programmet udskriver "Det gør den ikke!"


b) hvordan kan du få programmet til at udskrive det modsatte af, hvad den gør nu?

Betingelsen for om programmet skal skrive "Det gør den!" eller "Det gør den ikke!" er om der står -
"ja" eller alt andet end det i string str2.
Hvis vi vil have programmet til at udskrive det modsatte af det den skriver nu, skal vi blot ændre -
string'en str2 til at være lig med betingelsen. I dette tilfælde er betingelsen at str2 skal være -
lig med "ja". Hvis vi ændrer str2 til at være "ja" vil programmet udskrive linjen "Det gør den!".
*/
