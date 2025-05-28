Boolean FirstColor = true;

void autoPlayOff() {
  autoPlay = false;
  playlist[currentSong].pause();
}
void autoPlayOn() {
  autoPlay = true;
  playlist[currentSong].play();
}
void nextSongCheck() {
  if (currentSong ==2) {
    autoPlayOff();
    currentSong = 0;
    playlist[currentSong].rewind();
    autoPlayOn();
  } else {
    autoPlayOff();
    currentSong+=1;
    playlist[currentSong].rewind();
    autoPlayOn();
  }
}
void prevSongCheck() {
  if (currentSong ==0) {
    autoPlayOff();
    playlist[currentSong].rewind();
    currentSong =2;
    autoPlayOn();
  } else {
    autoPlayOff();
    playlist[currentSong].rewind();
    currentSong-=1;
    autoPlayOn();
  }
}

void startTimer() {
  TimeOn= false;
  TimeOn = true;
  RwTime = millis();
}

void ColorSaveFunction()
{
  String[] ColorValue = {str(ColorChange)};
  String AbsolutePath = sketchPath();
  String ColorSetPath = AbsolutePath + "/ColorSet.txt";
  saveStrings(ColorSetPath, ColorValue);
}
void ColorLoadFunction() {
    String AbsolutePath = sketchPath();
  String ColorSetPath = AbsolutePath + "/ColorSet.txt";
  String[] TextData = loadStrings(ColorSetPath);
  if (TextData != null && TextData.length>0) {
    println("loaded!" + TextData[0]);
    try {
      ColorChange = Boolean.parseBoolean(TextData[0]);
    }
    catch (Exception e) {
      println("parseBoolean didnt work");
      ColorChange = false;
    }
  } else {
    ColorChange=false;
  }
  FirstColor = false;
  
}
