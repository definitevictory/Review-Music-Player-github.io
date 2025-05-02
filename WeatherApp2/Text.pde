float[] rectDIVHeight = new float[2];
float[] rectDIVWidth = new float[2];
String[] string = new String[2];
float fontSize = 10;

void textStrings() {
   string[0] = "Timer";
  string[1] = "Title";
}
void textSetup() {
  fontSize = 50;
  for (int i=0; i<rectDIVHeight.length; i++) {
    if ( fontSize > rectDIVHeight[i])fontSize = rectDIVHeight[i];
  }

  float InkFreeAspectRatio = 0.77962964;
  fontSize = fontSize*InkFreeAspectRatio;
  
    textFont(appFont, fontSize);
  float fontSize_temp = 20;
  for ( int i=0; i<rectDIVWidth.length; i++) {
    if ( textWidth( string[i]) > rectDIVWidth[i]) {
      while ( textWidth( string[i]) > rectDIVWidth[i]) {
        fontSize_temp = fontSize_temp*0.99;
        textFont(appFont, fontSize_temp);
      }
      fontSize = fontSize_temp;
    }}
    textFont(appFont, fontSize);  
    println(fontSize);
  println(fontSize_temp);
  }
  
