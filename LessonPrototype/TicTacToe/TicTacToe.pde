int appHeight, appWidth;
float XRectX, XRectY, XRectWidth, XRectHeight;
float ORectX, ORectY, ORectWidth, ORectHeight;
float gameDisplayX, gameDisplayY, gameDisplayWidth, gameDisplayHeight;
float blockSize;
String[] OneBoxWidth = new String[2];
String[] OneBoxHeight = new String[2];

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
  println(gameDisplayX);
  println(gameDisplayHeight);

  
  rect(XRectX, XRectY, XRectWidth, XRectHeight); 
  rect(ORectX, ORectY, ORectWidth, ORectHeight);
  rect(gameDisplayX, gameDisplayY, gameDisplayWidth, gameDisplayHeight);
   // stroke(100,100);
  //line(gameDisplayX, gameDisplayY,gameDisplayX+gameDisplayWidth,gameDisplayY+gameDisplayHeight );
  
  
}
