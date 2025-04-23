//awoweoawoawoawkdokoksokoakdoaskasodksaoakwo
//
  int shorterSide;
    float footerX, footerY, footerWidth, footerHeight;
  float titleX, titleY, titleWidth, titleHeight;
void setup() {


  fullScreen();
  int appWidth = width;
  int appHeight = height;
  shorterSide = (appWidth > appHeight) ? appHeight : appWidth;
  //println("start of consol");
  //String[] fontList = PFont.list();
  //printArray(fontList);
  textSetup();


  titleX = appWidth*1/4;
  titleY = appHeight*1/4;
  titleWidth =appWidth*1/2 ;
  rectDIVHeight[0] = appHeight*2/10;
  footerX = appWidth*1/4 ;
  footerY = appHeight*3/4;
  footerWidth = appWidth*2/3;
  rectDIVHeight[1] = appHeight*1/10;
  rect(titleX, titleY, titleWidth, rectDIVHeight[0]);
  rect(footerX, footerY, footerWidth, rectDIVHeight[1]);
  textSetup2();


  //println("ASPECTrATIO:", inkfreeAspectRatio);
  color blue = #0000FF;
  fill(blue);
  textAlign(CENTER, CENTER);
  textFont(appFont, fontSize);
  while (footerWidth < textWidth(footer)) {fontSize = fontSize*0.99;
  textFont(appFont, fontSize);}
  println(fontSize);
    text(title, titleX, titleY, titleWidth, rectDIVHeight[0]);
  text(footer, footerX, footerY, footerWidth, rectDIVHeight[1]);
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
