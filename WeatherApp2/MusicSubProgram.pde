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
float PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight;
float PauseButtonX;
float IMGXChanged, IMGYChanged, IMGHeightChanged, IMGWidthChanged;
float PlayIMGXChanged, PlayIMGYChanged, PlayIMGHeightChanged, PlayIMGWidthChanged;
float SkipIMGXChanged, SkipIMGYChanged, SkipIMGHeightChanged, SkipIMGWidthChanged;
float progressBarWidth;
float TimeBeginX, TimeBeginY, TimeBeginWidth, TimeBeginHeight;
float BarX, BarY, BarWidth, BarHeight;
float SongNameX, SongNameY, SongNameWidth, SongNameHeight;
PImage IMG;
PImage PlayIMG;





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
  println(autoPlay);
}

void musicPlayerMousePressed() {
  if (mouseX>MusicButtonX && mouseX<MusicButtonX+MusicButtonWidth && mouseY>MusicButtonY && mouseY<MusicButtonY+MusicButtonHeight) {
    MusicButtonSwitch();
  }
  if (musicButton ==true) {
    if ( mouseX>PlayButtonX && mouseX<PlayButtonX+PlayButtonWidth && mouseY>PlayButtonY && mouseY<PlayButtonY+PlayButtonHeight) {
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
    if ( mouseX>PauseButtonX && mouseX<PauseButtonX+PlayButtonWidth && mouseY>PlayButtonY && mouseY<PlayButtonY+PlayButtonHeight)
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
  fill(blue);
  rect(X, Y, Width, Height);
  fill(defaultColor);
  MusicIMGX = X*5/2;
  MusicIMGY =Y*3/2;
  MusicIMGWidth  = Width*1.5/3;
  MusicIMGHeight = Height*1.1/2 ;
  PauseButtonX = X*6.75/2;
  PlayButtonY = Y*10/2;
  PlayButtonWidth = Width*1/20;
  PlayButtonHeight = Height*1/15;
  PlayButtonX = X*8.5/2;
  BarX = X*12/5;
  BarY = Y*29/5;
  BarWidth = Width*2.6/5;
  BarHeight = Height*1/20;
  TimeBeginX = X*3.52;
  TimeBeginY = Y*30.5/5;
  TimeBeginWidth = Width*1.5/10;
  TimeBeginHeight = Height*1/20;
  SongNameX =X*6/2;
  SongNameY = Y*2.2/2;
  SongNameWidth = Width*1/3;
  SongNameHeight = Height*1/15;

  String AliveIMGPath = "../images/AliveCover.png";
  String NocturneIMGPath = "../images/GoldenNoctCover.jpg";
  String UNOwenIMGPath = "../images/mansion.jpg";
  if (currentSong == 0) {
    IMG = loadImage(AliveIMGPath);
    int AliveIMGWidth = 500;
    int AliveIMGHeight = 281;
    float AliveBiggerSideRatio = (AliveIMGHeight >= AliveIMGWidth) ? float(AliveIMGWidth)/float(AliveIMGHeight): float(AliveIMGHeight)/float(AliveIMGWidth);
    //println(AliveBiggerSideRatio);
    Boolean AliveLandscape = (AliveIMGWidth>=AliveIMGHeight)? true:false;
    if (AliveLandscape == true) {
      IMGWidthChanged = MusicIMGWidth;
      IMGHeightChanged = (AliveIMGHeight >= MusicIMGHeight) ? IMGWidthChanged/AliveBiggerSideRatio : IMGWidthChanged*AliveBiggerSideRatio;
      if (IMGHeightChanged >= MusicIMGHeight) {
        println("awoadooaodooo");
        exit();
      }
      IMGXChanged = MusicIMGX;
      float leftOverHeight = ( MusicIMGHeight - IMGHeightChanged)*1/2;
      IMGYChanged = MusicIMGY + leftOverHeight;
    } else {
      IMGHeightChanged = MusicIMGHeight;
      IMGWidthChanged = (AliveIMGWidth >= MusicIMGWidth) ? IMGHeightChanged/AliveBiggerSideRatio : IMGHeightChanged*AliveBiggerSideRatio;
      if (IMGWidthChanged >= MusicIMGWidth) {
        println("oaodooo");
        exit();
      }
      IMGYChanged = MusicIMGY;
      float leftOverWidth = ( MusicIMGWidth - IMGWidthChanged)*1/2;
      IMGXChanged = MusicIMGX + leftOverWidth;
    }
  }

  if (currentSong == 1) {
    IMG = loadImage(UNOwenIMGPath);
    int UNOwenIMGWidth = 300;
    int UNOwenIMGHeight = 150;
    float UNOwenBiggerSideRatio = (UNOwenIMGHeight >= UNOwenIMGWidth) ? float(UNOwenIMGWidth)/float(UNOwenIMGHeight): float(UNOwenIMGHeight)/float(UNOwenIMGWidth);
    //println(AliveBiggerSideRatio);
    Boolean UNOwenLandscape = (UNOwenIMGWidth>=UNOwenIMGHeight)? true:false;
    if (UNOwenLandscape == true) {
      IMGWidthChanged = MusicIMGWidth;
      IMGHeightChanged = (UNOwenIMGHeight >= MusicIMGHeight) ? IMGWidthChanged/UNOwenBiggerSideRatio : IMGWidthChanged*UNOwenBiggerSideRatio;
      if (IMGHeightChanged >= MusicIMGHeight) {
        println("awoadooaodooo");
        exit();
      }
      IMGXChanged = MusicIMGX;
      float leftOverHeight = ( MusicIMGHeight - IMGHeightChanged)*1/2;
      IMGYChanged = MusicIMGY + leftOverHeight;
    } else {
      IMGHeightChanged = MusicIMGHeight;
      IMGWidthChanged = (UNOwenIMGWidth >= MusicIMGWidth) ? IMGHeightChanged/UNOwenBiggerSideRatio : IMGHeightChanged*UNOwenBiggerSideRatio;
      if (IMGWidthChanged >= MusicIMGWidth) {
        println("oaodooo");
        exit();
      }
      IMGYChanged = MusicIMGY;
      float leftOverWidth = ( MusicIMGWidth - IMGWidthChanged)*1/2;
      IMGXChanged = MusicIMGX + leftOverWidth;
    }
  }
  if (currentSong == 2) {
    IMG = loadImage(NocturneIMGPath);
    int NocturneIMGWidth = 500;
    int NocturneIMGHeight = 500;
    float NocturneBiggerSideRatio = (NocturneIMGHeight >= NocturneIMGWidth) ? float(NocturneIMGWidth)/float(NocturneIMGHeight): float(NocturneIMGHeight)/float(NocturneIMGWidth);
    //println(AliveBiggerSideRatio);
    Boolean NocturneLandscape = (NocturneIMGWidth>=NocturneIMGHeight)? true:false;
    if (NocturneLandscape == false) {
      IMGWidthChanged = MusicIMGWidth;
      IMGHeightChanged = (NocturneIMGHeight >= MusicIMGHeight) ? IMGWidthChanged/NocturneBiggerSideRatio : IMGWidthChanged*NocturneBiggerSideRatio;
      if (IMGHeightChanged >= MusicIMGHeight) {
        println("awoadooaodooo");

        exit();
      }
      IMGXChanged = MusicIMGX;
      float leftOverHeight = ( MusicIMGHeight - IMGHeightChanged)*1/2;
      IMGYChanged = MusicIMGY + leftOverHeight;
    } else {
      IMGHeightChanged = MusicIMGHeight;
      IMGWidthChanged = (NocturneIMGWidth >= MusicIMGWidth) ? IMGHeightChanged/NocturneBiggerSideRatio : IMGHeightChanged*NocturneBiggerSideRatio;
      if (IMGWidthChanged >= MusicIMGWidth) {
        println("oaodooo");
        exit();
      }
      IMGYChanged = MusicIMGY;
      float leftOverWidth = ( MusicIMGWidth - IMGWidthChanged)*1/2;
      IMGXChanged = MusicIMGX + leftOverWidth;
    }
  }
  fill(grey);
  rect(MusicIMGX, MusicIMGY, MusicIMGWidth, MusicIMGHeight);
  image(IMG, IMGXChanged, IMGYChanged, IMGWidthChanged, IMGHeightChanged);

  String PlayIMGPath = "../images/play3.png";
  PlayIMG = loadImage(PlayIMGPath);
  int PlayIMGWidth = 225;
  int PlayIMGHeight = 225;
  float PlayBiggerSideRatio = (PlayIMGHeight >= PlayIMGWidth) ? float(PlayIMGWidth)/float(PlayIMGHeight): float(PlayIMGHeight)/float(PlayIMGWidth);
  //println(AliveBiggerSideRatio);
  Boolean PlayLandscape = (PlayIMGWidth>=PlayIMGHeight)? true:false;
  if (PlayLandscape == false) {
    PlayIMGWidthChanged = PlayButtonWidth;
    PlayIMGHeightChanged = (PlayIMGHeight >= PlayButtonHeight) ? PlayIMGWidthChanged/PlayBiggerSideRatio : PlayIMGWidthChanged*PlayBiggerSideRatio;
    if (PlayIMGHeightChanged >= PlayButtonHeight) {
      println("awoadooaodooo");

      exit();
    }
    PlayIMGXChanged = PlayButtonX;
    float leftOverHeight2 = ( PlayButtonHeight - PlayIMGHeightChanged)*1/2;
    PlayIMGYChanged = PlayButtonY + leftOverHeight2;
  } else {
    PlayIMGHeightChanged = PlayButtonHeight;
    PlayIMGWidthChanged = (PlayIMGWidth >= PlayButtonWidth) ? PlayIMGHeightChanged/PlayBiggerSideRatio : PlayIMGHeightChanged*PlayBiggerSideRatio;
    if (PlayIMGWidthChanged >= PlayIMGWidth) {
      println("oaodooo");
      exit();
    }
    PlayIMGYChanged = PlayButtonY;
    float leftOverWidth2 = ( PlayButtonWidth - PlayIMGWidthChanged)*1/2;
    PlayIMGXChanged = PlayButtonX + leftOverWidth2;
  }


  String SkipIMGPath = "../images/forward2.png";
  PlayIMG = loadImage(SkipIMGPath);
  
  //centering
  //println(IMGXChanged, IMGYChanged, IMGWidthChanged, IMGHeightChanged);


  fill(red);
  rect(PauseButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight);
  //lets put play button img here that changes when it can skip and skip song
  fill(green);
  rect(PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight);

  if ( playlist[currentSong].isPlaying()) {
        PlayIMG = loadImage(SkipIMGPath);
    image(PlayIMG, PlayIMGXChanged, PlayIMGYChanged, PlayIMGHeightChanged, PlayIMGWidthChanged);
  } else {
    PlayIMG = loadImage(PlayIMGPath);
    image(PlayIMG, PlayIMGXChanged, PlayIMGYChanged, PlayIMGHeightChanged, PlayIMGWidthChanged);

  }
  //image(PlayIMG, PlayIMGXChanged, PlayIMGYChanged, PlayIMGHeightChanged, PlayIMGWidthChanged); //make this change with the function later
  fill(lightGrey);
  rect(BarX, BarY, BarWidth, BarHeight);
  fill(green);
  progressBarWidth = BarWidth*playlist[currentSong].position()/playlist[currentSong].length();
  rect(BarX, BarY, progressBarWidth, BarHeight);
  fill(white);
  rect(TimeBeginX, TimeBeginY, TimeBeginWidth, TimeBeginHeight);
  rect(SongNameX, SongNameY, SongNameWidth, SongNameHeight);
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
