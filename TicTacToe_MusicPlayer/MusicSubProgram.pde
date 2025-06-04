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

int skip = 10000;


float MusicMenuX, MusicMenuY, MusicMenuWidth, MusicMenuHeight;
float MusicButtonX, MusicButtonY, MusicButtonWidth, MusicButtonHeight;
float QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight;
float MusicIMGX, MusicIMGY, MusicIMGWidth, MusicIMGHeight;
float PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight;
float PauseButtonX;
float IMGXChanged [] = new float[3];
float IMGYChanged[] = new float[3];
float IMGHeightChanged[] = new float[3];
float IMGWidthChanged[] = new float[3];
float PlayIMGXChanged, PlayIMGYChanged, PlayIMGHeightChanged, PlayIMGWidthChanged;
float PauseIMGXChanged, PauseIMGYChanged, PauseIMGHeightChanged, PauseIMGWidthChanged;
float progressBarWidth;
float TimeBeginX, TimeBeginY, TimeBeginWidth, TimeBeginHeight;
float BarX, BarY, BarWidth, BarHeight;
float SongNameX, SongNameY, SongNameWidth, SongNameHeight;
float ColorChangeX, ColorChangeY, ColorChangeWidth, ColorChangeHeight;




PImage IMG[] = new PImage [3];
PImage PlayIMG;
PImage PauseIMG;
PImage BackwardsIMG;
PImage PrevIMG;
PImage RestartIMG;
PImage SkipIMG;
PImage NextIMG;
PImage MoonIMG;




Boolean ColorChange = false; //lets try changinng the values of the colors instead of changing the fill color ykwim.




void musicPlayerSetup() {

  MusicButtonWidth = QuitButtonWidth = shorterSide*10/100;
  MusicButtonX = appWidth - MusicButtonWidth;
  QuitButtonX = 0;
  MusicButtonY = 0;
  MusicButtonHeight = MusicButtonWidth/2;
  MusicMenuX = appWidth*0.75/6;
  MusicMenuY = appHeight*0.75/6;
  MusicMenuWidth = appWidth*2.25/3;
  MusicMenuHeight = appHeight*2.25/3;
  QuitButtonY = appHeight*90/100;
  QuitButtonHeight = QuitButtonWidth;
  //

 
  Files();

  textStrings();
  textSetup();
    
    ColorLoadFunction();
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
  
    if (playlist[currentSong].isPlaying() ==true && playlist[currentSong].position() >= playlist[currentSong].length()) {
nextSongCheck();
  }


  MusicPlayerGUI(MusicMenuX, MusicMenuY, MusicMenuWidth, MusicMenuHeight);
  //println(autoPlay);
  println(firstTime);  

}

void musicPlayerMousePressed() {
  if (mouseX>MusicButtonX && mouseX<MusicButtonX+MusicButtonWidth && mouseY>MusicButtonY && mouseY<MusicButtonY+MusicButtonHeight) {
    MusicButtonSwitch();
    if (musicButton ==false) {
     ColorSaveFunction();
    }
  }
  if (musicButton ==true) {
    if ( mouseX>PlayButtonX && mouseX<PlayButtonX+PlayButtonWidth && mouseY>PlayButtonY && mouseY<PlayButtonY+PlayButtonHeight) {
      if (!playlist[currentSong].isPlaying()) {
        autoPlayOn();
        startTimer();
      } else {
        if (timeLeft >0 && playlist[currentSong].position() > playlist[currentSong].length()*0.9) {
          nextSongCheck();
                    TimeOn=false;
          timeLeft=0;
        } else {
          if(timeLeft >0){
          nextSongCheck();
          TimeOn=false;
          timeLeft=0;
        } else {
          playlist[currentSong].skip(skip);
          startTimer();
        }
      }
    }
    }
  }

    if ( mouseX>PauseButtonX && mouseX<PauseButtonX+PlayButtonWidth && mouseY>PlayButtonY && mouseY<PlayButtonY+PlayButtonHeight) {
      if (playlist[currentSong].isPlaying()) {
        autoPlayOff();
        playlist[currentSong].pause();
        startTimer();
        println("Timer started.");
      } else {
        if (timeLeft >0) {
          if (playlist[currentSong].position() < playlist[currentSong].length()*0.1) {
            autoPlayOff();
            playlist[currentSong].rewind();
            prevSongCheck();
            TimeOn=false;
            timeLeft=0;
          } else {
            playlist[currentSong].rewind();
            startTimer();
            println("skibidi");
          }
        } else {
          playlist[currentSong].skip(-skip);
          startTimer();
          println("tooslow");
        }
      }
    }
    if ( mouseX>ColorChangeX && mouseX<ColorChangeX+ColorChangeWidth && mouseY>ColorChangeY && mouseY<ColorChangeY+ColorChangeHeight){
      ColorChange = !ColorChange;
    }
    }


  void musicPlayerKeyPressed() {
    if (key=='m' || key == 'M') {
      MusicButtonSwitch();
    }

    if (key=='q' || key == 'Q') {
      if (playlist[currentSong].isPlaying()) {
        autoPlayOff();
        playlist[currentSong].pause();
        startTimer();
        println("Timer started.");
      } else {
        if (timeLeft >0) {
          if (playlist[currentSong].position() < playlist[currentSong].length()*0.1) {
            autoPlayOff();
            playlist[currentSong].rewind();
            prevSongCheck();
            TimeOn=false;
            timeLeft=0;
          } else {
            playlist[currentSong].rewind();
            startTimer();
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
        autoPlayOn();
        startTimer();
      } else {
        if (timeLeft >0) {
          nextSongCheck();
          TimeOn=false;
          timeLeft=0;
        } else {

          playlist[currentSong].skip(skip);
          startTimer();
        }
      }
    }
  }

  void MusicPlayerGUI(float X, float Y, float Width, float Height) {

    MusicIMGX = X*5/2;
    MusicIMGY =Y*3/2;
    MusicIMGWidth  = Width*1.5/3;
    MusicIMGHeight = Height*1.1/2 ;
    PauseButtonX = X*6.75/2;
    PlayButtonY = Y*10/2;
    PlayButtonWidth = ColorChangeWidth = Width*1/20;
    PlayButtonHeight = ColorChangeHeight = Height*1/15;
    PlayButtonX = X*8.5/2;
    BarX = X*12/5;
    BarY = Y*29/5;
    BarWidth = Width*2.6/5;
    BarHeight = Height*1/20;
    TimeBeginX = X*3.52;
    TimeBeginY = Y*30.5/5;
    rectDIVWidth[0] = Width*1.5/10;
    rectDIVHeight[0] = Height*1/20;
    SongNameX =X*6/2;
    SongNameY = Y*2.2/2;
    rectDIVWidth[1] = Width*1/3;
    rectDIVHeight[1] = Height*1/15;
    MusicIMGX = X*5/2;
    ColorChangeX = X*4/2;
    ColorChangeY = Y*3/2;
    //color darkMode = #000000, lightMode = #FFFFFF, defaultColor = #FFFFFF, white=255, yellow=#F0F000, black=0, grey=#121212, blue=#6BD0EA, purple=#FF00FF, green=#58DE00, weakRed=#E10000, orange=#FF9600,
    //lightGrey=#E8E8E8, darkYellow=#969600, darkBlue=#08A4C9, red=#FF0000;
 
    if (ColorChange ==true) {
      blue = darkYellow;
      white = black;
      yellow = green;
    } else {
      blue = #6BD0EA;
      white = 255;
      yellow = #F0F000;
    }
    fill(blue);
    rect(X, Y, Width, Height);
    fill(white);
    Coloring();
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
