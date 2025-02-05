//Library:use sketch.
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Test
//Global Variables
Minim minim;  //object to access all functions
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


//
int appWidth, appHeight;


//
PFont QuitFont;
PFont TimeFont;
int size;
color red=#FF0000;
String Quittext="Quit";
String nameText="nameofsong";
//
PImage backgroundImage;
String backgroundImage2Name = "whiteModeBackground";
String backgroundImageName ="darkModeBackground";
String extension =".jpg";
String pathway ="../imagesFolder/";
String path = pathway+backgroundImageName+extension;
//
float CoverImageHeightAdjusted, CoverImageWidthAdjusted, CoverImageHeightAdjusted1, CoverImageWidthAdjusted1, CoverImageHeightAdjusted2, CoverImageWidthAdjusted2, CoverImageHeightShown, CoverImageWidthShown, CoverImageHeightShown1, CoverImageWidthShown1, CoverImageHeightShown2, CoverImageWidthShown2, imageYCENTER ;
float imageXLEFT, imageXCENTER,imageYCENTER1 , imageXCENTER1, imageYCENTER2, imageXCENTER2;
PImage songCoverImage,songCoverImage1 , songCoverImage2, songCoverImageShown;

//
color foregroundColour;
color white=255, yellow=#F0F000, black=0, grey=#121212, blue=#6BD0EA, purple=#FF00FF, green=#58DE00, weakRed=#E10000, orange=#FF9600,
  lightGrey=#E8E8E8, darkYellow=#969600, darkBlue=#08A4C9;//Hexadecimals in color selector
color backgroundColour, whiteBackground=255, darkBackground=0, nameColour, nameTextColour, tColour=weakRed, otherBackgroundColour, skipColour, skipHoverColour; //Grayscale, much smaller than color
Boolean dayMode=false; //starts at night mode
Boolean lightMode=false;
Boolean menuShow=false;//dark mode start can be changed if user preference is made
Boolean LoopMenu =false;
Boolean pause=true;
Boolean randomMusic=false;
int skip=5000;
Boolean Infinite= false;
int LoopCountShow;


//


//
void setup() {
  //println("HelloWorld");
  //Concatenation & Inspecting Variables with Character Escapes
  println("Width: "+width+ "\tHeight: "+height+ "\tDisplay Width: "+displayWidth+ "\t\tDisplay Height: "+displayHeight);
  //NULL: all values are null until size(), arithmetic errors
  //println("Example Formula: add 1 to the width", width+1);
  //
  //Display:CANVAS  & Full Screen
  //size(600,500); //width,  height
  fullScreen(); //displayWidth, displayHeight
  appWidth= displayWidth;
  appHeight= displayHeight;
  //println(appWidth, appHeight);
  //Display geometry: Landscape, Portrait, Square
  //Landscape is HARDCODED
  //String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Turn your phone";
  //println (displayInstructions);
  //
  minim = new Minim(this);
  String extensionMusic = ".mp3";
  String quitButtonSound = "Punch";
  String pathwaysoundEffects = "../soundEffects/"; //relative path
  print(pathwaysoundEffects+quitButtonSound+extensionMusic);
  String path = sketchPath(pathwaysoundEffects+quitButtonSound+extensionMusic);//absolute path
  //println (path) ;
  soundEffects1 = minim.loadFile(path);
  //playList1 = minim.loadFile(path);
  minim = new Minim(this);
  String pingSound= "Notification";
  String path2 = sketchPath(pathwaysoundEffects+pingSound+extensionMusic);
  soundEffects2 = minim.loadFile(path2);
  //
  // just put image X for right
  //

  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //see font use CreateFont
  size=40;
  QuitFont = createFont("Elephant", size); //Tools/Create Font/ Find Font/ Use size field/ Dont press OK, bugs
  TimeFont = createFont("Arial Black", size);
  //
  divs();
  drawRects();
  //Variable population
  String songCoverImagePath2; //put this after divs or no work
  String coverGoldenNoct ="GoldenNoctCover.jpg"; //change pic when you know what to put here
  String pathway ="../../imagesFolder/";
  songCoverImagePath2= pathway+coverGoldenNoct;
  songCoverImage2=loadImage(songCoverImagePath2);

  float smallerCoverDimension = (imageWidth < imageHeight)? imageWidth:imageHeight ;
  float CoverImageWidthPixel=500.0 ;
  float CoverImageHeightPixel= 500.0;
  float CoverAspectRatio = CoverImageWidthPixel/CoverImageHeightPixel;
  float largerCoverDimension =smallerCoverDimension*CoverAspectRatio; //Aspect Ratio
  if ( CoverImageWidthPixel < largerCoverDimension) {
    while (  CoverImageWidthPixel < largerCoverDimension) {
      largerCoverDimension-=1;
      smallerCoverDimension -=1;
    }
  }
  CoverImageWidthAdjusted=largerCoverDimension;
  CoverImageHeightAdjusted=smallerCoverDimension;
  ///////
  ///////
  String coverMansion ="mansion.jpg";
  songCoverImage1=loadImage(pathway+coverMansion);

  float smallerCoverDimension2 = (imageWidth < imageHeight)? imageWidth:imageHeight ;
  float CoverImageWidthPixel2=900.0 ;
  float CoverImageHeightPixel2= 450.0;
  float CoverAspectRatio2 = CoverImageWidthPixel2/CoverImageHeightPixel2;
  float largerCoverDimension2 =smallerCoverDimension2*CoverAspectRatio2; //Aspect Ratio
  if ( CoverImageWidthPixel2 < largerCoverDimension2) {
    while (  CoverImageWidthPixel2 < largerCoverDimension2) {
      largerCoverDimension2-=1;
      smallerCoverDimension2 -=0.5;
    }
  }
  CoverImageWidthAdjusted2=largerCoverDimension2;
  CoverImageHeightAdjusted2=smallerCoverDimension2;
    String coverAlive ="AliveCover.png";
  songCoverImage=loadImage(pathway+coverAlive);

  float smallerCoverDimension3 = (imageWidth < imageHeight)? imageWidth:imageHeight ;
  float CoverImageWidthPixel3=1000.0 ;
  float CoverImageHeightPixel3= 562.0;
  float CoverAspectRatio3 = CoverImageWidthPixel3/CoverImageHeightPixel3;
  float largerCoverDimension3 =smallerCoverDimension3*CoverAspectRatio3; //Aspect Ratio
  if ( CoverImageWidthPixel3 < largerCoverDimension3) {
    while (  CoverImageWidthPixel3 < largerCoverDimension3) {
      largerCoverDimension3-=1;
      smallerCoverDimension3 -=0.562;
    }
  }
  CoverImageWidthAdjusted1=largerCoverDimension3;
  CoverImageHeightAdjusted1=smallerCoverDimension3;
  //
  //Music stuff
  String ALIVE = "ALIVE.mp3";
  String UNOwen = "U.N OwenWasHer.mp3";
  String GoldenNocturne = "Golden Nocturne.mp3";
  String PathwayMusic = "../Music/";

  //

  String pathMusicAlive = sketchPath(PathwayMusic+ALIVE);//absolute path
  String pathMusicUNOwen = sketchPath(PathwayMusic+UNOwen);
  String pathMusicGoldenNocturne = sketchPath(PathwayMusic+GoldenNocturne);
  //println ( path );
  //println("absolute path", pathMusicAlive);
  currentSong=0;
  filePathNameSoundEffect[0] = pathwaysoundEffects+ quitButtonSound+extensionMusic;
  filePathNameMusic[currentSong] = pathMusicAlive;
  filePathNameMusic[1] = pathMusicUNOwen;
  filePathNameMusic[2] = pathMusicGoldenNocturne;
  soundEffects = minim.loadFile( filePathNameSoundEffect[0] );
  currentSong= 0;
  //
  playlist =  minim.loadFile( filePathNameMusic[currentSong] );
  //println (minim.loadFile( filePathNameMusic[currentSong] ));
  soundEffects = minim.loadFile( filePathNameSoundEffect[0] );
  currentSong = numberMusicSongs - numberMusicSongs;
  playlistMetaData[0] = minim.loadFile(filePathNameMusic[0]).getMetaData();
  playlistMetaData[1] = minim.loadFile(filePathNameMusic[1]).getMetaData();
  playlistMetaData[2] = minim.loadFile(filePathNameMusic[2]).getMetaData();

  //
  //whiteMode= true; //must ask to see blue light
  //if ( hour ()>=9 && hour()<=17  ) backgroundColour = whiteBackground ;
  //if ( hour ()<9 && hour()>17  ) backgroundColour = darkBackground ;

  /* if (hour ()>=9 && hour()<=17) { dayMode=true;}
   
   if ( dayMode==true){foregroundColour = white;
   //change between light/dark modes
   lightMode=true;
   backgroundColour = whiteBackground;
   foregroundColour = black; //black
   nameColour=blue;
   nameTextColour=white;
   otherBackgroundColour = lightGrey;
   skipColour=blue;
   skipHoverColour=darkBlue;
   } else {
   backgroundColour = darkBackground;
   foregroundColour = yellow; //yellow,  hour ()<9 && hour()>17)
   nameColour=grey;
   nameTextColour=yellow;
   otherBackgroundColour = grey;
   skipColour = yellow;
   skipHoverColour = darkYellow;
   if ( hour ()>=9 && hour()<=17)foregroundColour = white; delete these later idk
   } */
  //
  //soundEffects1.loop();
} //End setup
//
void draw() {
  //background(backgroundColour); goes byebye cuz image is below, need image go away to show

  if (dayMode == true) {
    path = pathway+backgroundImage2Name+extension;
  }//change image
  if (dayMode == false) {
    path = pathway+backgroundImageName+extension;
  }
  if (lightMode == true) {
    backgroundColour = whiteBackground;
    foregroundColour = black; //black
    nameColour=blue;
    nameTextColour=black;
    otherBackgroundColour = lightGrey;
    skipColour=blue;
    skipHoverColour=darkBlue;

  } else {
    backgroundColour = darkBackground;
    foregroundColour = yellow; //yellow,  hour ()<9 && hour()>17)
    nameColour=grey;
    nameTextColour=white;
    otherBackgroundColour = grey;
    skipColour = yellow;
    skipHoverColour = darkYellow;

  }


  playlistMetaData[currentSong] =playlist.getMetaData();
  //printArray(filePathNameMusic[0]);
  //println(playlistMetaData[currentSong].length());
  //println(currentSong);
  //println(LoopNumber);


  Colouring();
  MUSICA();
  LoopNumber = LoopTimes-1;
  looping = false;
 //println(playlist.position());
 //println(playlist.length());
  //


  //println(dayMode);
  //println(lightMode);
} //End draw
//
void keyPressed() { //Listener
  if (key=='Q' || key=='q') {
    soundeffect_2();
  };
  if (key==CODED && keyCode==ESC) exit();
  if (key=='E' || key=='e') {
    if (dayMode == false) {
      dayMode = true;
    } else {
      dayMode = false;
    }
  }
  if (key=='O' || key=='o') {
    if (lightMode == false) {
      lightMode = true;
    } else {
      lightMode = false;
    }
  }
  if (key=='A' || key=='a') {
    playlist.loop();
    ;
  }

  if (key== 'E'|| key== 'e') {//End loop once
    playlist.loop(LoopNumber);
    pause=false;
    looping = true;
  }
  if (key== 'R'|| key== 'r') {// end loop infinite
    playlist.loop();
    looping = true;
  }
  if (key== 'S'|| key== 's') {
    looping = false;
    playlist.pause();
    playlist.rewind(); //affects loop
  }

  if (key== 'B'|| key== 'b') currentSong+=1;
  if (key== 'C'|| key== 'c') currentSong = int(random(numberMusicSongs - numberMusicSongs, numberMusicSongs));
}


//for whitemode
//End keyPressed
//


void mousePressed() { //Listener
  if ( mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight)
  {
    soundeffect_1();
  }
  //play button
  if (mouseX>playX && mouseX<playX+playWidth && mouseY>playY && mouseY<playY+playHeight) { soundeffect_2();
    if (playlist.isPlaying()) {
      pause=true;
      playlist.pause();
    } else {
      if (LoopTimes==1) {
        playlist.play();
        pause=false;
      } else {
        if (looping==false)
        {
          playlist.rewind();
          playlist.loop(LoopNumber);
          pause=false;
          looping =true;
        } else {
          playlist.play();
          pause=false;
        }
      }
    }
  }
  if (mouseX>menuX && mouseX<menuX+menuWidth && mouseY>menuY && mouseY<menuY+menuHeight) { soundeffect_1ver2();
    if (menuShow == false) {
      menuShow = true;
    } else {
      menuShow=false;
    }
  }
  if (mouseX>LoopX && mouseX<LoopX+LoopWidth && mouseY>LoopY && mouseY<LoopY+LoopHeight) if (LoopMenu==false) { soundeffect_1ver2();
    LoopMenu=true;
  } else {
    LoopMenu=false;
  }
  if (mouseX>LoopMCX && mouseX<LoopMCX+LoopMCWidth && mouseY>LoopMCY && mouseY<LoopMCY+LoopMCHeight) if (LoopMenu==true) { soundeffect_1ver2();
    LoopMenu=false;
  }
  //

  if (mouseX>forwardX && mouseX<forwardX+forwardWidth && mouseY>forwardY && mouseY<forwardY+forwardHeight) {soundeffect_2();// skipX, skipY, skipWidth, skipHeight
    /* NEXT Code
     - Order of Nested IFs: <10 seconds, between 10 & 75%, >75%, then else allows for regular skip on any file when not playing
     - Create a void next() to group this code if needing to use it other places
     - NEXT Button
     */
    if (playlist.position() < 10000) {
      pause =true;
      LoopTimes=1;
      Infinite=false;
      playlist.pause();
      playlist.rewind();
      if (randomMusic==true) currentSong =int(random(numberMusicSongs - numberMusicSongs, numberMusicSongs));
      else {
        if (currentSong >=2) {
          currentSong=0;
        } else {
          currentSong+=1;
        }
      playlist =  minim.loadFile( filePathNameMusic[currentSong] );
      playlist.play();
      pause=false;
    }}
    //println(currentSong);
    if (playlist.position() >= 10000 && playlist.position()<=playlist.length()*0.9*LoopTimes ) {
      playlist.skip(skip);
    }
    //
    if ((playlist.length()*0.9*LoopTimes)<playlist.position())
    {
      println(playlist.position());
      println(playlist.length()*0.75);
      LoopTimes=1;
      Infinite=false;
      playlist.pause();
      playlist.rewind();
      //trycatch solves arrayListOutOfBounds
      if (randomMusic==true) currentSong =int(random(numberMusicSongs - numberMusicSongs, numberMusicSongs));
      else {
        if (currentSong >=2) {
          currentSong=0;
        } else {
          currentSong+=1;
        }

        println(currentSong);
        playlist =  minim.loadFile( filePathNameMusic[currentSong] );
        playlist.play();

        //SKIP Forward 1 second (1000 milliseconds)
        //println ( "New Value of SKIP", skip, "Position:", playlist.position(), "Crossed Last 75%", playlist.position()>playlist.length()*0.75, "\t\tLast 75% starts at:", playlist.length()*0.75, "Song Ends at:", playlist.length() ) ;
      }
    }
  }
  if (mouseX>LoopInfX && mouseX<LoopInfX+LoopInfWidth && mouseY>LoopInfY && mouseY<LoopInfY+LoopInfHeight &&  LoopMenu ==true) { soundeffect_1ver2();
    looping=true;
    playlist.loop();
    pause=false;
    LoopTimes=1; //please remember to make timer infinite when this turned on
    Infinite = true;
  }
  if (mouseX>LoopaddX && mouseX<LoopaddX+LoopaddWidth && mouseY>LoopaddY && mouseY<LoopaddY+LoopaddHeight &&  LoopMenu ==true) {looping=true; soundeffect_1ver2();
    LoopTimes+=1;
    pause=true;
    playlist.pause();
    playlist.rewind();
    LoopCountShow =playlist.loopCount();
    
    
  }

  if (mouseX>pauseX && mouseX<pauseX+pauseWidth && mouseY>pauseY && mouseY<pauseY+pauseHeight) {soundeffect_2();
    pause=true;
    playlist.pause();
    playlist.rewind();
    looping=false;
    LoopTimes=1;
    Infinite=false;
  }

  if (mouseX>SkipSwitchX && mouseX<SkipSwitchX+SkipSwitchWidth && mouseY>SkipSwitchY && mouseY<SkipSwitchY+SkipSwitchHeight && LoopMenu ==true) { soundeffect_2();
    if (skip==5000)
      skip = 30000;
    else {
      skip = 5000;
    }
  }
  if (mouseX>LightModeX && mouseX<LightModeX+LightModeWidth && mouseY>LightModeY && mouseY<LightModeY+LightModeHeight && LoopMenu ==true) { soundeffect_1ver2();
    if (lightMode==true) lightMode=false; else{lightMode=true;}
  }
  if (mouseX>NightModeX && mouseX<NightModeX+NightModeWidth && mouseY>NightModeY && mouseY<NightModeY+NightModeHeight && LoopMenu ==true) { soundeffect_1ver2();
    if (dayMode==true) dayMode=false; else{dayMode=true;}
  }
    if (mouseX>volPicX && mouseX<volPicX+volPicWidth && mouseY>volPicY && mouseY<volPicY+volPicHeight) if (playlist.isMuted()) { soundeffect_1ver2();
    playlist.unmute();
  } else {
    playlist.mute();}
  if (mouseX>RandoModeX && mouseX<RandoModeX+RandoModeWidth && mouseY>RandoModeY && mouseY<RandoModeY+RandoModeHeight) if (randomMusic==true) {randomMusic=false;} else{randomMusic=true;}
   if (mouseX>rewindX && mouseX<rewindX+rewindWidth && mouseY>rewindY && mouseY<rewindY+rewindHeight)   {playlist.skip(-skip); soundeffect_1ver2();}
  //
  //
  //End mousePressed
}

//
// End MAIN Program
