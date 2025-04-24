//awoweoawoawoawkdokoksokoakdoaskasodksaoakwo
//
  int shorterSide;
    float footerX, footerY;
  float titleX, titleY;
  float[] rectDIVHeight = new float[2];
float[] rectDIVWidth = new float[2];
void setup() {


  fullScreen();
  int appWidth = width;
  int appHeight = height;
  shorterSide = (appWidth > appHeight) ? appHeight : appWidth;
  //println("start of consol");
  //String[] fontList = PFont.list();
  //printArray(fontList);
  textSetup();
  stringVarsEntry();


  titleX = appWidth*1/4;
  titleY = appHeight*1/4;
  rectDIVWidth[0] =appWidth*1/2 ;
  rectDIVHeight[0] = appHeight*2/10;
  footerX = appWidth*1/4 ;
  footerY = appHeight*3/4;
  rectDIVWidth[1] = appWidth*2/3;
  rectDIVHeight[1] = appHeight*1/10;
  rect(titleX, titleY, rectDIVWidth[0], rectDIVHeight[0]);
  rect(footerX, footerY, rectDIVWidth[1], rectDIVHeight[1]);
  
  textSetup2();


  //println("ASPECTrATIO:", inkfreeAspectRatio);
  color blue = #0000FF;
  fill(blue);
  textAlign(CENTER, CENTER);
  textFont(appFont, fontSize);

 
 
  println(fontSize);
    text(string[0], titleX, titleY, rectDIVWidth[0], rectDIVHeight[0]);
  text(string[1], footerX, footerY, rectDIVWidth[1], rectDIVHeight[1]);
  color white = #FFFFFF;
  fill(white);

}
void draw() {
}
void mousePressed() {
}
void keyPressed() {
}

//
