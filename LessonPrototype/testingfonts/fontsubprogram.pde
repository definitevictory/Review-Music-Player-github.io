
PFont appFont;
String title = "skibidoi";
String footer = "k9w9w99w9w9w9w9w9w99w9w9w9w9w99w9w9w99w";
float fontSize =82;
float[] rectDIVHeight = new float[2];
void textSetup() {
  //println("start of consol");
  //String[] fontList = PFont.list();
  //printArray(fontList);
  appFont = createFont("Ink Free", shorterSide);
}
void textSetup2() {
  //println("start of consol");
  //String[] fontList = PFont.list();
  //printArray(fontList);
  appFont = createFont("Ink Free", shorterSide);
 
    for (int i=0; i<rectDIVHeight.length; i++) {
      if ( fontSize > rectDIVHeight[i])fontSize = rectDIVHeight[i];
  }

  float ComicSansAspectRatio = 0.37962964;
  fontSize = fontSize*ComicSansAspectRatio;
}

void textDraw() {
}

//end of subprogram
