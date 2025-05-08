float[] rectDIVHeight = new float[2];
float[] rectDIVWidth = new float[2];
String[] string = new String[3];

float fontSize = 10;

void textStrings() {
  String[] SongLengths = new String [3];
  for (int i=0; i<3; i++) {
   int timeMinute = (playlist[i].length()/60000);
   int timeSecond = ((playlist[i].length() /1000)%60 );
    SongLengths[i] = nf(timeMinute,1)+ ":" +nf(timeSecond,2);
  }
  int TimePosMin = (playlist[currentSong].position()/60000);
  int TimePosSec = (playlist[currentSong].position()/1000)%60;
  String TimePos = nf(TimePosMin,1) + ":" + nf(TimePosSec,2);
  String[] Times = new String[3];
if ( currentSong >=0) {
  Times[currentSong] = TimePos + "  /  "   + SongLengths[currentSong];
  string[0] = Times[currentSong];
}
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
    //println(fontSize);
  //println(fontSize_temp);
  }
  
