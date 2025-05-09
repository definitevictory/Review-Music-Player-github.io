int appHeight, appWidth;
float XRectX, XRectY, XRectWidth, XRectHeight;
float ORectX, ORectY, ORectWidth, ORectHeight;
float gameDisplayX, gameDisplayY, gameDisplayWidth, gameDisplayHeight;
float blockSize;
float[] OneBoxWidth = new float[3];
float[] OneBoxHeight = new float[3];
float boxWidth, boxHeight;
int[] Boards = new int[9];
int[] symbole = new int[2]; // 0 is unselected, 1 is X, 2 is O
Boolean gameStart = false; //set to true when a player is picked a circle or X;
Boolean X = false;
color red = #FF0000, green = #00FF00, white = #FFFFFF;

void setup() {
  //Display
  fullScreen();

  appWidth = displayWidth;
  appHeight = displayHeight;
  println(appWidth);
  println(appHeight);
}
void draw() {
  XRectX = appWidth*1/5;
  XRectY = appHeight*1/10;
  XRectWidth = appWidth*1/3;
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

  //println("a"+gameDisplayX);
  //println("b"+gameDisplayWidth);
  //print("c"+gameDisplayY);
  //println("d"+gameDisplayHeight);

  fill(red);
  rect(XRectX, XRectY, XRectWidth, XRectHeight);
  fill(green);
  rect(ORectX, ORectY, ORectWidth, ORectHeight);
  fill(white);
  rect(gameDisplayX, gameDisplayY, gameDisplayWidth, gameDisplayHeight);
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



  println(Boards[0], Boards[1], Boards[2]);
  println(Boards[3], Boards[4], Boards[5]);
  println(Boards[6], Boards[7], Boards[8]);
  println(X);
  println(gameStart);
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
  }
  if (gameStart == true) {
    for (int i = 0; i<3; i++) {
      for (int a = 0; a<3; a++) {
        if (mouseX>OneBoxWidth[i] && mouseX<OneBoxWidth[i]+boxWidth && mouseY>OneBoxHeight[a] && mouseY<OneBoxHeight[a]+boxHeight)
        {
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
 
