int belobUdenMoms = 3000000;
float belobMedMoms = 0;
String navn = "Generic Rich Guy";

void setup(){
  noLoop();
}


void draw(){
   float belobMedMoms = beregnMoms(belobUdenMoms);
  println("Tak fordi du handlede hos Fakta,", navn,", vi håber at se dig igen!");
  println("Det samlede beløb bliver til",belobMedMoms,"kr");
  println("");
  println("Beløb excl. moms:");
  println(belobUdenMoms,"kr");
  println("");
  println("Beløb inkl. moms:");
  println(belobMedMoms,"kr");
  println("");
  println("Tidspunkt for køb:",day(),"/",month(),year(), hour(),":",minute());
  println("");
  println("Når nej, undskyld. Jeg havde lige glemt at de ikke betaler skat og/eller moms");
  println("Det samlede beløb kommer til",belobUdenMoms,"kr");
}


float beregnMoms(int belob){
  return belob*1.25;
}
