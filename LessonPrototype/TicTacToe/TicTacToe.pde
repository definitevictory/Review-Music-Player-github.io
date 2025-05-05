int appHeight, appWidth;
float XRectX, XRectY, XRectWidth, XRectHeight;
float ORectX, ORectY, ORectWidth, ORectHeight;
float gameDisplayX, gameDisplayY, gameDisplayWidth, gameDisplayHeight;
float blockSize;
float[] OneBoxWidth = new float[3];
float[] OneBoxHeight = new float[3];
int[] Boards = new int[8];
int[] symbole = new int[2]; // 0 is unselected, 1 is X, 2 is O
Boolean gameStart = false; //set to true when a player is picked a circle or X;
Boolean X = false;

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
  println("a"+gameDisplayX);
  println("b"+gameDisplayWidth);
  print("c"+gameDisplayY);
  println("d"+gameDisplayHeight);


  rect(XRectX, XRectY, XRectWidth, XRectHeight);
  rect(ORectX, ORectY, ORectWidth, ORectHeight);
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
    OneBoxWidth[i] = gameDisplayX+250*i;
    OneBoxHeight[i] = gameDisplayY+250*i;
  }


  for (int i=0; i<3; i++)
  {
    rect(OneBoxWidth[i], OneBoxHeight[0], 250, 250);
    rect(OneBoxWidth[i], OneBoxHeight[1], 250, 250);
    rect(OneBoxWidth[i], OneBoxHeight[2], 250, 250);
  }
}

void TicTacMousePressed() {
  if (X==true) {
    if (mouseX>OneBoxWidth[0] && mouseX<OneBoxWidth[0]+250 && mouseY>OneBoxHeight[0] && mouseY<OneBoxHeight[0]+250) {
     if( Boards[0]==0) { Boards[0] = 1;}
     }
    }
  }
