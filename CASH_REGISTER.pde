int belobUdenMoms = int(random(0,2500));
float belobMedMoms = 0;
String navn = "Bob";

//PFont JL;

void setup(){
  noLoop();
  size(400,600);
  //JL = createFont("Arial",24,true);
}


void draw(){
 // textFont(JL,20);
  fill(0);
  float belobMedMoms = beregnMoms(belobUdenMoms);
  background(255);
  //text("Fakta, Agtoftsvej 1",20,50);
  //text("Tidspunkt for køb:",day(),"/",month(),year(),hour(),":",minute(),50,90);
  println("Fakta, Agtoftsvej 1");
  println("");
  println("Tidspunkt for køb:",day(),"/",month(),year(), hour(),":",minute());
  println("");
  println("Tak fordi du handlede hos Fakta,", navn,", vi håber at se dig igen!");
  println("Det samlede beløb bliver til",belobMedMoms,"kr");
  println("");
  println("Beløb excl. moms:");
  println(belobUdenMoms,"kr");
  println("");
  println("Beløb inkl. moms:");
  println(belobMedMoms,"kr");
  println("");
  
/*  println("");
  println("Når nej, undskyld. Jeg havde lige glemt at de ikke betaler skat og/eller moms");
  println("Det samlede beløb kommer til",belobUdenMoms,"kr");*/
}


float beregnMoms(int belob){
  return belob*1.25;
}
// du har nok printet lidt for meget måske