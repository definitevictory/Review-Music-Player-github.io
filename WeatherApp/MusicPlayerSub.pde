Boolean musicButton=false;
Minim minim;
AudioPlayer soundEffects1;
AudioPlayer soundEffects2;
AudioPlayer playList1;
int numberSoundEffects = 1;//OS able to count
int numberMusicSongs = 3;
String[] filePathNameMusic = new String[numberMusicSongs];
String[] filePathNameSoundEffect = new String[numberSoundEffects];
AudioPlayer[] playlist = new AudioPlayer[ numberMusicSongs ];
AudioPlayer soundEffects;// [numberSoundEffects];
AudioMetaData[] playlistMetaData = new AudioMetaData[numberMusicSongs];
int currentSong = 0;
Boolean looping = false;
int LoopTimes =1;
int LoopNumber = LoopTimes-1;


float MusicMenuX, MusicMenuY, MusicMenuWidth, MusicMenuHeight;
float MusicButtonX, MusicButtonY, MusicButtonWidth, MusicButtonHeight;
float QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight;
color darkMode = #000000, lightMode = #FFFFFF, defaultColor = #FFFFFF, white=255, yellow=#F0F000, black=0, grey=#121212, blue=#6BD0EA, purple=#FF00FF, green=#58DE00, weakRed=#E10000, orange=#FF9600,
  lightGrey=#E8E8E8, darkYellow=#969600, darkBlue=#08A4C9, red=#FF0000;

void musicPlayerSetup() {

  MusicButtonWidth = QuitButtonWidth = shorterSide*10/100;
  MusicButtonX = QuitButtonX = appWidth - MusicButtonWidth;
  MusicButtonY = 0;
  MusicButtonHeight = MusicButtonWidth/2;
  MusicMenuX = appWidth*0.75/6;
  MusicMenuY = appHeight*0.75/6;
  MusicMenuWidth = appWidth*2.25/3;
  MusicMenuHeight = appHeight*2.25/3;
  QuitButtonY = appHeight*90/100;
  QuitButtonHeight = QuitButtonWidth;
  //
  //
  //
  String ALIVE = "ALIVE.mp3";
  //String UNOwen = "U.N OwenWasHer.mp3";
  //String GoldenNocturne = "Golden Nocturne.mp3";
  String PathwayMusic = "../Music/";

  //

  String pathMusicAlive =PathwayMusic+ALIVE;//absolute path
  //String pathMusicUNOwen = (PathwayMusic+UNOwen);
  //String pathMusicGoldenNocturne =(PathwayMusic+GoldenNocturne);
  //println ( path );
  //println("absolute path", pathMusicAlive);
  //filePathNameMusic[currentSong] = pathMusicAlive;
  //filePathNameMusic[1] = pathMusicUNOwen;
  //filePathNameMusic[2] = pathMusicGoldenNocturne;
  println(pathMusicAlive);
  playlist[currentSong] =  minim.loadFile(pathMusicAlive);
  //filePathNameSoundEffect[0] = pathwaysoundEffects+ quitButtonSound+extensionMusic;
  //filePathNameMusic[currentSong] = pathMusicAlive;
  //filePathNameMusic[1] = pathMusicUNOwen;
  //filePathNameMusic[2] = pathMusicGoldenNocturne;
  //soundEffects = minim.loadFile( filePathNameSoundEffect[0] );
  currentSong= 0;


  //playlist[currentSong].play();
}
void musicPlayerDraw() {
  println("music is playing");
  MusicPlayerGUI(MusicMenuX, MusicMenuY, MusicMenuWidth, MusicMenuHeight);
}

void musicPlayerMousePressed() {
  if (mouseX>MusicButtonX && mouseX<MusicButtonX+MusicButtonWidth && mouseY>MusicButtonY && mouseY<MusicButtonY+MusicButtonHeight) {
    MusicButtonSwitch();
  }
  if (musicButton ==true) {
  } else {
  }
}

void musicPlayerKeyPressed() {
  if (key=='m' || key == 'M') {
    MusicButtonSwitch();
  }
}
void MusicPlayerGUI(float X, float Y, float Width, float Height) {
  fill(blue);
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
