import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


import java.io.File;

int appHeight, appWidth, shorterSide;
PFont appFont;

float XRectX, XRectY, XRectWidth, XRectHeight;
float ORectX, ORectY, ORectWidth, ORectHeight;
float gameDisplayX, gameDisplayY, gameDisplayWidth, gameDisplayHeight;
float RectBGX, RectBGY, RectBGWidth, RectBGHeight;
float AiDisplayX;
float blockSize;
float[] OneBoxWidth = new float[3];
float[] OneBoxHeight = new float[3];
float boxWidth, boxHeight;
int[] Boards = new int[9];
int[] symbole = new int[2]; // 0 is unselected, 1 is X, 2 is O
Boolean gameStart = false; //set to true when a player is picked a circle or X;
Boolean X = false;

int WinnerNumber = 0; // 0 is unfinished, 1 is X, 2 is 0
int XWins =0;
int OWins =0;
Boolean AiMode = false;
Boolean AiHard = false;
 boolean AiTurn = false;


void setup() {
  //Display
  fullScreen();
  minim = new Minim(this);
  appWidth = displayWidth;
  appHeight = displayHeight;
  shorterSide = ( displayWidth < displayHeight) ? displayWidth : displayHeight ;
   appFont = createFont("Ink Free", shorterSide);
     textAlign(CENTER, CENTER);
  textFont(appFont, fontSize);
  musicPlayerSetup();
  population();

  println("Setup complete");
  println("App Width: " + appWidth + ", App Height: " + appHeight);
  playlist[currentSong].pause(); //stop music player because all my other code starts it before the setup finishes.
}//End setup
//

void draw() {
Colouring2();
  fill(darkBlue);
  rect(MusicButtonX, MusicButtonY, MusicButtonWidth, MusicButtonHeight);
  fill(red);
  rect(QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight);
  if ( musicButton==true ) {
    musicPlayerDraw();
    TimeDraw ();
  }
   for (int i=0; i<3; i++)
  {
    OneBoxWidth[i] = gameDisplayX+boxWidth*i;
    OneBoxHeight[i] = gameDisplayY+boxWidth*i;
  }


  for (int i=0; i<3; i++)
  {
    for (int a = 0; a<3; a++) {
      rect(OneBoxWidth[i], OneBoxHeight[a], boxWidth, boxHeight);
      rect(OneBoxWidth[i], OneBoxHeight[a], boxWidth, boxHeight);
      rect(OneBoxWidth[i], OneBoxHeight[a], boxWidth, boxHeight);
      if ( Boards[ a*3+i] ==1) {
        line(OneBoxWidth[i], OneBoxHeight[a], OneBoxWidth[i]+boxWidth, OneBoxHeight[a]+boxHeight);
        line(OneBoxWidth[i]+boxWidth, OneBoxHeight[a], OneBoxWidth[i], OneBoxHeight[a]+boxHeight);
      }
      if ( Boards[ a*3+i] ==2) {
        ellipse(OneBoxWidth[i]+boxWidth /2, OneBoxHeight[a]+boxHeight/2, boxWidth, boxHeight);
      }
    }
  }

  DelayForGameEnd();

 // println(Boards[0], Boards[1], Boards[2]);
  //println(Boards[3], Boards[4], Boards[5]);
 // println(Boards[6], Boards[7], Boards[8]); //the board!
  //println(X);
 // println(gameStart);
 // println(AiHard);
  //println(AiMode);
 // println(FirstTurn);

  // CheckforWin(int a, int b, int c)
   GameEnd();
   
  if (AiMode == true && AiHard == true && X==false && TimeOn2 ==false && AiTurn ==true) {
    AiHardMode();
    println("awawaa");
    startTimer();
    AiTurn =false;
  }
  if ( AiMode ==true && AiHard ==false && X==false && TimeOn2 ==false && AiTurn ==true) {
    AiEasy(); 
    startTimer();// completely random for easy mode
    AiTurn =false;
  }


 

  if (WinnerNumber != 0) {
    gameStart = false;
    AiMode = false;
    AiHard = false;
    FirstTurn=true;
    if (WinnerNumber == 1) {
      if (TimeOn2 == false) {
        XWins++;
        WinnerNumber=0;

        for (int i=0; i<9; i++) {
          Boards[i] = 0;
        }
      }
    } else {
      if (TimeOn2 == false) {
        OWins++;
        WinnerNumber = 0;


        for (int i=0; i<9; i++) {
          Boards[i] = 0;
        }
      }
    }
  }
}
  void mousePressed() {
     if (gameStart == false) {
    if (mouseX>XRectX && mouseX<XRectX+XRectWidth && mouseY>XRectY && mouseY<XRectY+XRectHeight) {
      X = true;
      gameStart = true;
    }
    if (mouseX>ORectX && mouseX<ORectX+ORectWidth && mouseY>ORectY && mouseY<ORectY+ORectHeight) {
      X = false;
      gameStart = true;
    }
    if (mouseX>AiDisplayX*1.05 && mouseX<AiDisplayX*1.05+gameDisplayWidth/4 && mouseY>gameDisplayY*1.5 && mouseY<gameDisplayY*1.5+gameDisplayHeight/4) {
      X = true;
      gameStart = true;
      AiHard= false;
      AiMode = true;
    }
    if (mouseX>AiDisplayX*1.05 && mouseX<AiDisplayX*1.05+gameDisplayWidth/4 && mouseY>gameDisplayY*2.5 && mouseY<gameDisplayY*2.5+gameDisplayHeight/4) {
      X = true;
      gameStart = true;
      AiHard= true;
      AiMode = true;
    }
  }
  if (gameStart == true) {
    for (int i = 0; i<3; i++) {
      for (int a = 0; a<3; a++) {
        if (mouseX>OneBoxWidth[i] && mouseX<OneBoxWidth[i]+boxWidth && mouseY>OneBoxHeight[a] && mouseY<OneBoxHeight[a]+boxHeight)
        {
         
          if ( Boards[ a*3+i] ==0 ) {
            if (X==true) {
              Boards[ a*3+i] =1;
               X=!X;
               if (AiMode ==true){
                  startTimer();
               AiTurn =true;}
            } else {
              if (AiMode==false) {
              Boards[ a*3+i] =2;
               X=!X; //dont separate in cuz if ai on, player press too fast will skip ai turn
              }
            }
           
          }
        }
      }
    }
  }

  musicPlayerMousePressed();
  if (mouseX>QuitButtonX && mouseX<QuitButtonX+QuitButtonWidth && mouseY>QuitButtonY && mouseY<QuitButtonY+QuitButtonHeight) {
    exit();
  }
}
void keyPressed() {
  musicPlayerKeyPressed();
}
