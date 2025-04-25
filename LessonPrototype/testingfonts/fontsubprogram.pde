
PFont appFont;
String title = "skibidoi";
String footer = "k9w9w99w9w9w9w9w9w99w9w9w9w9w99w9w9w99w";
float fontSize =820;
String[] string = new String[2];

void textSetup() {
  //println("start of consol");
  //String[] fontList = PFont.list();
  //printArray(fontList);
  appFont = createFont("Ink Free", shorterSide);

}
void stringVarsEntry() {
  string[0] = "SKIBIDI";
  string[1] = "CHICKEN jockey";
};
void textSetup2() {
  //println("start of consol");
  //String[] fontList = PFont.list();
  //printArray(fontList);
  appFont = createFont("Ink Free", shorterSide);
  fontSize = shorterSide;

  for (int i=0; i<rectDIVHeight.length; i++) {
    if ( fontSize > rectDIVHeight[i])fontSize = rectDIVHeight[i];
  }

  float InkFreeAspectRatio = 0.77962964;
  fontSize = fontSize*InkFreeAspectRatio;
  float fontSize_temp = fontSize;
  for ( int i=0; i<rectDIVWidth.length; i++) {
    if ( textWidth( string[1]) > rectDIVWidth[i]) {
      while ( textWidth( string[1]) > rectDIVWidth[i]) {
        fontSize_temp = fontSize_temp*0.99;
        textFont(appFont, fontSize);
      }
      fontSize = fontSize_temp;
    }
    textFont(appFont, fontSize);
  }
  
}
void textDraw() {
}

//end of subprogram
