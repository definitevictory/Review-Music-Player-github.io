Boolean musicButton=false;
Minim minim;
AudioPlayer soundEffects1;
AudioPlayer soundEffects2;
AudioPlayer playList1;
int numberSoundEffects = 1;//OS able to count
int numberMusicSongs = 3;
String[] filePathNameMusic = new String[numberMusicSongs];
String[] filePathNameSoundEffect = new String[numberSoundEffects];
AudioPlayer playlist; // [numberMusicSongs];
AudioPlayer soundEffects;// [numberSoundEffects];
AudioMetaData[] playlistMetaData = new AudioMetaData[numberMusicSongs];
int currentSong = 0;
Boolean looping = false;
int LoopTimes =1;
int LoopNumber = LoopTimes-1;

float MusicMenuX, MusicMenuY, MusicMenuWidth, MusicMenuHeight;
float MusicButtonX, MusicButtonY, MusicButtonWidth,MusicButtonHeight;

color darkMode = #000000, lightMode = #FFFFFF, defaultColor = #FFFFFF;

void musicPlayerSetup() {
  
  MusicButtonWidth = shorterSide*10/100;
  MusicButtonX = appWidth - MusicButtonWidth;
  MusicButtonY = 0;
  MusicButtonHeight = MusicButtonWidth;
  MusicMenuX = appWidth*1/6;
  MusicMenuY = appHeight*1/6;
  MusicMenuWidth = appWidth*2/3;
  MusicMenuHeight = appHeight*2/3;
  
}
void musicPlayerDraw() {
  println("music is playing");
 MusicPlayerGUI(MusicMenuX, MusicMenuY, MusicMenuWidth, MusicMenuHeight);
}

void musicPlayerMousePressed() {
  if (mouseX>MusicButtonX && mouseX<MusicButtonX+MusicButtonWidth && mouseY>MusicButtonY && mouseY<MusicButtonY+MusicButtonHeight)  {
MusicButtonSwitch();
}}
void musicPlayerKeyPressed() {
  if (key=='m' || key == 'M') {
MusicButtonSwitch();
}
}
void MusicPlayerGUI(float X, float Y, float Width, float Height) {
    fill(darkMode);
    rect(X, Y, Width, Height);
  fill(defaultColor);
}
void MusicButtonSwitch() { 
  if (musicButton ==true)
  {
  musicButton=false;
} else {
  musicButton=true;
}
  
}
//end of subprogram music player
