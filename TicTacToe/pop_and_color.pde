 color red = #FF0000, green = #00FF00, white = #FFFFFF, blue = #0000FF, grey = #BBBBBB, purple = #CBC3E3, OColor=#FF0000, XColor=#FF0000, EasyColor = grey, HardColor = grey;


 
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
  gameDisplayWidth = gameDisplayHeight = 750;
  boxWidth = gameDisplayWidth/3;
  boxHeight = gameDisplayHeight/3;
  AiDisplayX = appWidth*6.5/8;
}

void Coloring2(){
  fill(purple);
  rect(RectBGX, RectBGY, RectBGWidth, RectBGHeight);
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

  if (gameStart ==false && TimeOn2 ==false) {
    if (mouseX>XRectX && mouseX<XRectX+XRectWidth && mouseY>XRectY && mouseY<XRectY+XRectHeight) {
      XColor = green;
    }
  }
  fill(XColor);
  rect(XRectX, XRectY, XRectWidth, XRectHeight);
  if (gameStart ==false && TimeOn2 ==false) {
    if (mouseX>ORectX && mouseX<ORectX+ORectWidth && mouseY>ORectY && mouseY<ORectY+ORectHeight) {
      OColor = green;
    }
  }
  fill(OColor);
  rect(ORectX, ORectY, ORectWidth, ORectHeight);
  fill(white);
  rect(gameDisplayX, gameDisplayY, gameDisplayWidth, gameDisplayHeight);
  rect (AiDisplayX, gameDisplayY, gameDisplayWidth/2, gameDisplayHeight);
  HardColor = grey;
  if (mouseX>AiDisplayX*1.05 && mouseX<AiDisplayX*1.05+gameDisplayWidth/4 && mouseY>gameDisplayY*2.5 && mouseY<gameDisplayY*2.5+gameDisplayHeight/4)
  {
    HardColor = white;
  }
    if(AiMode ==true && AiHard ==true && gameStart ==true){
    HardColor = green;
  }
    fill(HardColor);
 rect (AiDisplayX*1.05, gameDisplayY*2.5, gameDisplayWidth/4, gameDisplayHeight/4); 
 EasyColor = grey;
  if (mouseX>AiDisplayX*1.05 && mouseX<AiDisplayX*1.05+gameDisplayWidth/4 && mouseY>gameDisplayY*1.5 && mouseY<gameDisplayY*1.5+gameDisplayHeight/4) {
    EasyColor = white;
  }
  if(AiMode ==true && AiHard ==false && gameStart ==true){
    EasyColor = green;
  }
   fill(EasyColor);
  rect (AiDisplayX*1.05, gameDisplayY*1.5, gameDisplayWidth/4, gameDisplayHeight/4);
  String EasyText = "  Ai Easy";
  String HardText = "  Ai Hard";
  String XText = "     "+"X" +"                                 "+ "Wins:"+ XWins;
  String OText =  "     "+"O" +"                                "+ "Wins:" + OWins;
  fill(blue);
  text(EasyText, AiDisplayX*1.05, gameDisplayY*1.5, gameDisplayWidth/4, gameDisplayHeight/4);
  text (HardText, AiDisplayX*1.05, gameDisplayY*2.5, gameDisplayWidth/4, gameDisplayHeight/4);
  text( XText, XRectX, XRectY, XRectWidth, XRectHeight);
  text (OText, ORectX, ORectY, ORectWidth, ORectHeight);
  fill(white); 
}
