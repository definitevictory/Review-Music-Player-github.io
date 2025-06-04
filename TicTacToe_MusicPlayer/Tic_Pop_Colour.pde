 color red2 = #FF0000, green2 = #00FF00, white2 = #FFFFFF, blue2 = #0000FF, grey2 = #BBBBBB, purple2 = #CBC3E3, OColor=#FF0000, XColor=#FF0000, EasyColor = grey2, HardColor = grey2;

color darkMode = #000000, lightMode = #FFFFFF, defaultColor = #FFFFFF, white=255, yellow=#F0F000, black=0, grey=#121212, blue=#6BD0EA, purple=#FF00FF, green=#58DE00, weakRed=#E10000, orange=#FF9600,
  lightGrey=#E8E8E8, darkYellow=#969600, darkBlue=#08A4C9, red=#FF0000;
 
 void population(){
  RectBGX = RectBGY = 0;
  RectBGWidth = appWidth;
  RectBGHeight = appHeight;
  XRectX = appWidth*1/5;
  XRectY = ORectY= appHeight*1/10;
  XRectWidth = appWidth*0.9005/3;
  XRectHeight = ORectHeight = appHeight*1/8;
  ORectX = appWidth*2.5/5;
  ORectWidth = appWidth*1/3;


  gameDisplayX = appWidth*2.5/8;
  gameDisplayY = appHeight*1/4;
  gameDisplayWidth = gameDisplayHeight = appWidth/2.56;
  boxWidth = gameDisplayWidth/3;
  boxHeight = gameDisplayHeight/3;
  AiDisplayX = appWidth*6.5/8;
  //music player cuz it doesn't work with the way other divs in music player work

  
}

void Coloring2(){
  fill(purple2);
  rect(RectBGX, RectBGY, RectBGWidth, RectBGHeight);
  if ( X ==false && gameStart ==true) {
    XColor = red2;
    OColor = green2;
  }
  if ( X ==true && gameStart ==true) {
    XColor = green2;
    OColor = red2;
  }
  if (gameStart ==false ) {
    XColor = red2;
    OColor = red2;
  }

  if (gameStart ==false && TimeOn2 ==false) {
    if (mouseX>XRectX && mouseX<XRectX+XRectWidth && mouseY>XRectY && mouseY<XRectY+XRectHeight) {
      XColor = green2;
    }
  }
  fill(XColor);
  rect(XRectX, XRectY, XRectWidth, XRectHeight);
  if (gameStart ==false && TimeOn2 ==false) {
    if (mouseX>ORectX && mouseX<ORectX+ORectWidth && mouseY>ORectY && mouseY<ORectY+ORectHeight) {
      OColor = green2;
    }
  }
  fill(OColor);
  rect(ORectX, ORectY, ORectWidth, ORectHeight);

  fill(white2);
 
  rect (AiDisplayX, gameDisplayY, gameDisplayWidth/2, gameDisplayHeight);
   rect(gameDisplayX, gameDisplayY, gameDisplayWidth, gameDisplayHeight);
  HardColor = grey2;
  if (mouseX>AiDisplayX*1.05 && mouseX<AiDisplayX*1.05+gameDisplayWidth/4 && mouseY>gameDisplayY*2.5 && mouseY<gameDisplayY*2.5+gameDisplayHeight/4)
  {
    HardColor = white2;
  }
    if(AiMode ==true && AiHard ==true && gameStart ==true){
    HardColor = green2;
  }
    fill(HardColor);
 rect (AiDisplayX*1.05, gameDisplayY*2.5, gameDisplayWidth/4, gameDisplayHeight/4); 
 EasyColor = grey2;
  if (mouseX>AiDisplayX*1.05 && mouseX<AiDisplayX*1.05+gameDisplayWidth/4 && mouseY>gameDisplayY*1.5 && mouseY<gameDisplayY*1.5+gameDisplayHeight/4) {
    EasyColor = white2;
  }
  if(AiMode ==true && AiHard ==false && gameStart ==true){
    EasyColor = green2;
  }
   fill(EasyColor);
  rect (AiDisplayX*1.05, gameDisplayY*1.5, gameDisplayWidth/4, gameDisplayHeight/4);
 textFont(appFont, 40);
    String EasyText = "  Ai Easy";
  String HardText = "  Ai Hard";
  String XText = "     "+"X" +"                                 "+ "Wins:"+ XWins;
  String OText =  "     "+"O" +"                                "+ "Wins:" + OWins;

  fill(blue2);
  text(EasyText, AiDisplayX*1.05, gameDisplayY*1.5, gameDisplayWidth/4, gameDisplayHeight/4);
  text (HardText, AiDisplayX*1.05, gameDisplayY*2.5, gameDisplayWidth/4, gameDisplayHeight/4);
  text( XText, XRectX, XRectY, XRectWidth, XRectHeight);
  text (OText, ORectX, ORectY, ORectWidth, ORectHeight);
  fill(white2); 
}
