int appHeight, appWidth;
float XRectX, XRectY, XRectWidth, XRectHeight;
float ORectX, ORectY, ORectWidth, ORectHeight;
float gameDisplayX, gameDisplayY, gameDisplayWidth, gameDisplayHeight;
float AiDisplayX;
float blockSize;
float[] OneBoxWidth = new float[3];
float[] OneBoxHeight = new float[3];
float boxWidth, boxHeight;
int[] Boards = new int[9];
int[] symbole = new int[2]; // 0 is unselected, 1 is X, 2 is O
Boolean gameStart = false; //set to true when a player is picked a circle or X;
Boolean X = false;
color red = #FF0000, green = #00FF00, white = #FFFFFF, blue = #0000FF, grey = #BBBBBB;
color XColor=#FF0000;
color OColor=#FF0000;
int WinnerNumber = 0; // 0 is unfinished, 1 is X, 2 is 0
int XWins =0;
int OWins =0;
Boolean AiMode = false;
Boolean AiHard = false;
PFont appFont;
void setup() {
  //Display
  fullScreen();

  appWidth = displayWidth;
  appHeight = displayHeight;
  println(appWidth);
  println(appHeight);
  appFont = createFont("Ink Free", 40);
  textAlign(LEFT, CENTER);
  textFont(appFont, 40);
}
void draw() {
  XRectX = appWidth*1/5;
  XRectY = appHeight*1/10;
  XRectWidth = appWidth*0.9005/3;
  XRectHeight = appHeight*1/8;
  ORectX = appWidth*2.5/5;
  ORectY = appHeight*1/10;
  ORectWidth = appWidth*1/3;
  ORectHeight = appHeight*1/8;

  gameDisplayX = appWidth*2.5/8;
  gameDisplayY = appHeight*1/4;
  gameDisplayWidth = 750;
  gameDisplayHeight = 750;
  boxWidth = gameDisplayWidth/3;
  boxHeight = gameDisplayHeight/3;
  AiDisplayX = appWidth*6.5/8;

  //println("a"+gameDisplayX);
  //println("b"+gameDisplayWidth);
  //print("c"+gameDisplayY);
  //println("d"+gameDisplayHeight);
  if ( X ==false && gameStart ==true) {
    XColor = red;
    OColor = green;
  }
  if ( X ==true && gameStart ==true) {
    XColor = green;
    OColor = red;
  }
  if (gameStart ==false ) {
    XColor = red;
    OColor = red;
  }
 
  if(gameStart ==false && TimeOn ==false){
  if (mouseX>XRectX && mouseX<XRectX+XRectWidth && mouseY>XRectY && mouseY<XRectY+XRectHeight){
  XColor = green;
  }}
    fill(XColor);
  rect(XRectX, XRectY, XRectWidth, XRectHeight);
    if(gameStart ==false && TimeOn ==false){
  if (mouseX>ORectX && mouseX<ORectX+ORectWidth && mouseY>ORectY && mouseY<ORectY+ORectHeight){
  OColor = green;
  }}
  fill(OColor);
  rect(ORectX, ORectY, ORectWidth, ORectHeight);
  fill(white);
  rect(gameDisplayX, gameDisplayY, gameDisplayWidth, gameDisplayHeight);
  rect (AiDisplayX, gameDisplayY, gameDisplayWidth/2, gameDisplayHeight);
    fill(grey);
  if (mouseX>AiDisplayX*1.05 && mouseX<AiDisplayX*1.05+gameDisplayWidth/4 && mouseY>gameDisplayY*1.5 && mouseY<gameDisplayY*1.5+gameDisplayHeight/4) 
  {fill(white);}
  rect (AiDisplayX*1.05, gameDisplayY*1.5, gameDisplayWidth/4, gameDisplayHeight/4);
  fill(grey);
      if (mouseX>AiDisplayX*1.05 && mouseX<AiDisplayX*1.05+gameDisplayWidth/4 && mouseY>gameDisplayY*2.5 && mouseY<gameDisplayY*2.5+gameDisplayHeight/4) {
        fill(white);
      }
  rect (AiDisplayX*1.05, gameDisplayY*2.5, gameDisplayWidth/4, gameDisplayHeight/4);
  String EasyText = "  Ai Easy";
  String HardText = "  Ai Hard";
  String XText = "     "+"X" +"                                 "+ "Wins:"+ XWins;
  String OText =  "     "+OWins +"                                "+ "Wins:" + "O";
  fill(blue);
  text(EasyText, AiDisplayX*1.05, gameDisplayY*1.5, gameDisplayWidth/4, gameDisplayHeight/4);
  text (HardText, AiDisplayX*1.05, gameDisplayY*2.5, gameDisplayWidth/4, gameDisplayHeight/4);
  text( XText, XRectX, XRectY, XRectWidth, XRectHeight);
  text (OText, ORectX, ORectY, ORectWidth, ORectHeight);
  fill(white);


  //stroke(100,100);
  //line(gameDisplayX, gameDisplayY,gameDisplayX+gameDisplayWidth,gameDisplayY+gameDisplayHeight );

  /* for (int i=0; i<3;i++)
   {OneBoxWidth[i] = gameDisplayX+250*i;
   OneBoxHeight[i] = gameDisplayY+250*i;
   rect(OneBoxWidth[i],gameDisplayY,250,250);
   rect(OneBoxWidth[i],gameDisplayY+250,250,250);
   rect(OneBoxWidth[i],gameDisplayY+500,250,250);
   }*/
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

  println(Boards[0], Boards[1], Boards[2]);
  println(Boards[3], Boards[4], Boards[5]);
  println(Boards[6], Boards[7], Boards[8]); //the board!
  println(X);
  println(gameStart);
  println(AiHard);
  println(AiMode);
  println(FirstTurn);

  // CheckforWin(int a, int b, int c)
  for (int i=0; i<3; i++) {
    if (CheckforWin(i*3, i*3+1, i*3+2)) {
      break;
    }
  }
  for (int i=0; i<3; i++) {
    if (CheckforWin(i, i+3, i+6)) {
      break;
    }
  }
  CheckforWin(0, 4, 8);
  CheckforWin(2, 4, 6);



  if (AiMode == true && AiHard == true && X==false) {
    AiHardMode();
    println("awawaa");
  }
  if( AiMode ==true && AiHard ==false && X==false) {
    AiEasy(); // completely random for easy mode
  }

  Boolean Tie = true;
  for (int i=0; i<9; i++) { //tie
    if (Boards[i] ==0) {
      Tie = false;
    }
  }
  if (Tie == true) {
    startTimer();
    gameStart = false;
    AiMode = false;
    AiHard = false;
    FirstTurn=true;
    for (int a=0; a<9; a++) {
      Boards[a] = 0;
    }
  }

  if (WinnerNumber != 0) {
            gameStart = false;
        AiMode = false;
        AiHard = false;
        FirstTurn=true;
    if (WinnerNumber == 1) { 
      if (TimeOn == false) {
        XWins++;
        WinnerNumber=0;

        for (int i=0; i<9; i++) {
          Boards[i] = 0;
        }
      }
    } else {
      if (TimeOn == false) {
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
          startTimer();
          if ( Boards[ a*3+i] ==0 ) {
            if (X==true) {
              Boards[ a*3+i] =1;
            } else {
              Boards[ a*3+i] =2;
            }
            X=!X;
          }
        }
      }
    }
  }
}
