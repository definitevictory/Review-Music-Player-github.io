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
Boolean firstTime =true;
boolean autoPlay =true;
int LoopTimes =1;
int LoopNumber = LoopTimes-1;

int skip = 5000;


float MusicMenuX, MusicMenuY, MusicMenuWidth, MusicMenuHeight;
float MusicButtonX, MusicButtonY, MusicButtonWidth, MusicButtonHeight;
float QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight;
float MusicIMGX, MusicIMGY, MusicIMGWidth, MusicIMGHeight;
float VolSQX, VolSQY, VolSQWidth, VolSQHeight;
float VolSQX2, VolSQY2, VolSQWidth2, VolSQHeight2;
float VolSQX3, VolSQY3, VolSQWidth3, VolSQHeight3;
float VolSQX4, VolSQY4, VolSQWidth4, VolSQHeight4;



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
  String UNOwen = "U.N OwenWasHer.mp3";
  String GoldenNocturne = "Golden Nocturne.mp3";
  String PathwayMusic = "../Music/";

  //

  String pathMusicAlive = PathwayMusic+ALIVE;
  String pathMusicUNOwen = PathwayMusic+UNOwen;
  String pathMusicNocturne = PathwayMusic+GoldenNocturne;
  String file = pathMusicAlive;

  //println(pathMusicAlive);*/
  playlist[currentSong] = minim.loadFile(file);
  currentSong++;
  file = pathMusicUNOwen;
  playlist[currentSong] = minim.loadFile(file);
  currentSong++;
  file = pathMusicNocturne;
  playlist[currentSong] = minim.loadFile(file);
  currentSong=0;
}
void musicPlayerDraw() {
  //println("music is playing");
  if (playlist[currentSong].isPlaying() ==false && autoPlay == true) {
    if (firstTime ==true) {
      playlist[currentSong].loop(0);
      firstTime =false;
    } else {
      nextSongCheck();
    }
  }

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

  if (key=='q' || key == 'Q') {
    if (playlist[currentSong].isPlaying()) {
      playlist[currentSong].pause();
      startTimer();
      println("Timer started.");
    } else {
      if (timeLeft >0) {
        if (playlist[currentSong].position() < playlist[currentSong].length()*0.1) {
          playlist[currentSong].rewind();
          prevSongCheck();
        } else {
          playlist[currentSong].rewind();
          timeLeft=0;
          println("skibidi");
        }
      } else {
        playlist[currentSong].skip(-skip);
        startTimer();
        println("tooslow");
      }
    }
  }
  if (key=='p' || key == 'P') {
    if (!playlist[currentSong].isPlaying()) {
      playlist[currentSong].play();
      startTimer();
    } else {
      if (timeLeft >0) {
        nextSongCheck();
      } else {
        playlist[currentSong].skip(skip);
        startTimer();
      }
    }
  }
  if (key=='F' || key == 'f') {
    playlist[currentSong].setGain(-10);
  }
    if (key=='G' || key == 'g') {
    playlist[currentSong].setGain(0);
  }
      if (key=='H' || key == 'h') {
    playlist[currentSong].setGain(6); //lmao idk if we keep this, if delete delete all the vol squares too
  }
}
void MusicPlayerGUI(float X, float Y, float Width, float Height) {
  fill(blue);
  rect(X, Y, Width, Height);
  fill(defaultColor);
  MusicIMGX = X*6/2;
  MusicIMGY =Y*3/2;
  MusicIMGWidth  = Width*1/3;
  MusicIMGHeight = Height*1/2 ;
  VolSQX = MusicIMGX;
  VolSQY = Y*9/2;
  VolSQWidth = MusicIMGWidth/10;
  VolSQHeight = Height*1/20;
  VolSQX2=VolSQX*11/10;
  VolSQY2=VolSQY;
  VolSQWidth2=VolSQWidth;
  VolSQHeight2=VolSQHeight;
  fill(grey);
  rect(MusicIMGX, MusicIMGY, MusicIMGWidth, MusicIMGHeight);
  fill(red);
  rect(VolSQX, VolSQY, VolSQWidth, VolSQHeight);
  fill(green);
  rect(VolSQX2, VolSQY2, VolSQWidth2, VolSQHeight2);
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
