void Colouring () {
  float ProgressBarTime;
  String Inf = "Infinite";
  backgroundImage = loadImage(path) ;
  image(backgroundImage, backimageX, backimageY, backimageWidth, backimageHeight);
  fill(foregroundColour);
  fill(purple);
  rect(quitX, quitY, quitWidth, quitHeight);
  if (mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight) {
    fill(yellow);
    rect(quitX+quitWidth*1/9, quitY+quitHeight*1/9, quitWidth*7/9, quitHeight*7/9);
  } else {
    fill(purple);
  }
  //Text
  fill(purple);

  textAlign(CENTER, CENTER); //align X+Y in processing reference (left, center, right| top, center, Bottom ,baseline.
  size=20;
  textFont(QuitFont, size);
  text(Quittext, quitX, quitY, quitWidth, quitHeight);

  fill(foregroundColour); //to default
  fill(otherBackgroundColour);
  rect(imageX, imageY, imageWidth, imageHeight);
  //
  fill(nameColour);
  rect(songNameX, songNameY, songNameWidth, songNameHeight);
  //
  textAlign(LEFT, CENTER);
  fill(nameTextColour);
  textFont(QuitFont, size); //change this font later look bad
  String nameText1 = "Alive";
  String nameText2 = "UN Owen Was Her";
  String nameText3 = "Golden Nocturne";
  if (currentSong ==0)nameText=nameText1;
  if (currentSong ==1)nameText=nameText2;
  if (currentSong ==2)nameText=nameText3;
  text(nameText, songNameX*110/100, songNameY, songNameWidth, songNameHeight);
  //

  float bruh;
  bruh = (((playlist.length()+0.0001)/60000) - ((playlist.position()+0.0001)/60000)); //maybe multiply by loop numbers to find timer when looped
  //println (nf(bruh, 0, 2));
  //println( bruh);
  int something = ((playlistMetaData[currentSong].length()/1000)/60);
  int another =  (playlistMetaData[currentSong].length()/1000)-((playlistMetaData[currentSong].length()/1000)/60 * 60);
  //float awawawawa = (something,another);
  float timeSecond;
  timeSecond =(another*(LoopTimes) - ((playlist.position()+0.0001)/60000*60));
  //println(another - ((playlist.position()+0.0001)/60000*60));
  float timeMinute;
  timeMinute= (something*(LoopTimes));
  if (timeSecond<0) {
    while (timeSecond<0)
    {
      timeSecond+=60;
      timeMinute-=1;
    }
  };
  if (timeSecond>60) {
    while (timeSecond>60)
    {
      timeSecond-=60;
      timeMinute+=1;
    }
  };
  // println(timeSecond);
  //println(timeMinute);
  if (Infinite ==false) {
    //println(playlistMetaData[currentSong].length());
    textAlign(LEFT, CENTER);
    fill(nameTextColour);
    textFont(TimeFont, size);
    text((nf(int(timeMinute+1-0.1), 0, 0)), timeX*99.75/100, timeY*103/100);
    textAlign(LEFT, CENTER);
    fill(nameTextColour);
    textFont(TimeFont, size);
    String TimerThing = ":";
    text(TimerThing, timeX*102.5/100, timeY*102.45/100);
    fill(nameTextColour);
    textFont(TimeFont, size);
    textAlign(LEFT, CENTER);
    text(nf(int(timeSecond), 0, 0), timeX*104/100, timeY*103/100);
  } else {
    text(Inf, timeX*99.75/100, timeY, timeWidth*2, timeHeight);
  }
  //
  fill(tColour);
  rect(tbarX, tbarY, tbarWidth, tbarHeight);
  //
  fill(green);

  ProgressBarTime=(float)playlist.position()/(playlist.length()); //
  //println(ProgressBarTime);
  //println(playlist.position());
  rect(tprogressX, tprogressY, tbarWidth*ProgressBarTime, tprogressHeight);


  fill(otherBackgroundColour);
  rect(playX, playY, playWidth, playHeight);
  if (mouseX>playX && mouseX<playX+playWidth && mouseY>playY && mouseY<playY+playHeight) {
    fill(orange);
    rect(playX+playWidth*8/100, playY+playHeight*8/100, playWidth*86/100, playHeight*86/100);
  }
  PImage playImage;
  String playpic ="play3.png";
  playImage=loadImage(pathway+playpic);

  float smallerPicDimension1 = (playWidth < playHeight)? playWidth:playHeight ;
  float picImageWidthPixel1=225.0 ;
  float picImageHeightPixel1= 225.0;
  float picAspectRatio1 = picImageWidthPixel1/picImageHeightPixel1;
  float largerPicDimension1 =smallerPicDimension1*picAspectRatio1; //Aspect Ratio
  if ( picImageWidthPixel1 < largerPicDimension1) {
    while (  picImageWidthPixel1 < largerPicDimension1) {
      largerPicDimension1-=1;
      smallerPicDimension1 -=1;
    }
  }
  image(playImage, playX, playY, playWidth, playHeight); //background not transparent for no reason
  //
  fill(otherBackgroundColour);
  rect(pauseX, pauseY, pauseWidth, pauseHeight);
  if (mouseX>pauseX && mouseX<pauseX+pauseWidth && mouseY>pauseY && mouseY<pauseY+pauseHeight) {
    fill(orange);
    rect(pauseX+pauseWidth*8/100, pauseY+pauseHeight*8/100, pauseWidth*86/100, pauseHeight*86/100);
  }
  PImage  StopImage;
  String StopPic ="Stop.png";
  StopImage=loadImage(pathway+StopPic);

  float smallerPicDimension9 = (rewindWidth < rewindHeight)? rewindWidth:rewindHeight ;
  float picImageWidthPixel9=500.0 ;
  float picImageHeightPixel9= 500.0;
  float picAspectRatio9 = picImageWidthPixel9/picImageHeightPixel9;
  float largerPicDimension9 =smallerPicDimension9*picAspectRatio9; //Aspect Ratio
  if ( picImageWidthPixel9 < largerPicDimension9) {
    while (  picImageWidthPixel9 < largerPicDimension9) {
      largerPicDimension9-=1;
      smallerPicDimension9 -=1;
    }
  }
  image(StopImage, pauseX, pauseY, pauseWidth, pauseHeight);
  //
  fill(otherBackgroundColour);
  rect(rewindX, rewindY, rewindWidth, rewindHeight);
  if (mouseX>rewindX && mouseX<rewindX+rewindWidth && mouseY>rewindY && mouseY<rewindY+rewindHeight) {
    fill(orange);
    rect(rewindX, rewindY, rewindWidth, rewindHeight);
  }
  PImage reverseImage;
  String reversePic ="reverse2.png";
  reverseImage=loadImage(pathway+reversePic);

  float smallerPicDimension2 = (rewindWidth < rewindHeight)? rewindWidth:rewindHeight ;
  float picImageWidthPixel2=200.0 ;
  float picImageHeightPixel2= 200.0;
  float picAspectRatio2 = picImageWidthPixel2/picImageHeightPixel2;
  float largerPicDimension2 =smallerPicDimension2*picAspectRatio2; //Aspect Ratio
  if ( picImageWidthPixel2 < largerPicDimension2) {
    while (  picImageWidthPixel2 < largerPicDimension2) {
      largerPicDimension2-=1;
      smallerPicDimension2 -=1;
    }
  }
  image(reverseImage, rewindX, rewindY, rewindWidth, rewindHeight);

  //
  fill(otherBackgroundColour);
  rect(forwardX, forwardY, forwardWidth, forwardHeight);
  if (mouseX>forwardX && mouseX<forwardX+forwardWidth && mouseY>forwardY && mouseY<forwardY+forwardHeight) {
    fill(orange);
    rect(forwardX, forwardY, forwardWidth, forwardHeight);
  }
  PImage forwardImage;
  String forwardPic ="forward2.png";
  forwardImage=loadImage(pathway+forwardPic);

  float smallerPicDimension3 = (forwardWidth < forwardHeight)? forwardWidth:forwardHeight ;
  float picImageWidthPixel3=450.0 ;
  float picImageHeightPixel3= 450.0;
  float picAspectRatio3 = picImageWidthPixel3/picImageHeightPixel3;
  float largerPicDimension3 =smallerPicDimension3*picAspectRatio3; //Aspect Ratio
  if ( picImageWidthPixel3 < largerPicDimension3) {
    while (  picImageWidthPixel3 < largerPicDimension3) {
      largerPicDimension3-=1;
      smallerPicDimension3 -=1;
    }
  }
  image(forwardImage, forwardX*99/100, forwardY*99/100, forwardWidth*160/100, forwardHeight*1.50);
  //
  //
  //
  //fill(otherBackgroundColour);
  //rect(volbarX, volbarY, volbarWidth, volbarHeight);
  if(playlist.isMuted()){
  fill(red);
  rect(volPicX, volPicY, volPicWidth, volPicHeight);}
  else{fill(yellow);
  rect(volPicX, volPicY, volPicWidth, volPicHeight);}
  PImage volImage;
  String volPic ="volume2.png";
  volImage=loadImage(pathway+volPic);

  float smallerPicDimension4 = (volPicWidth < volPicHeight)? volPicWidth:volPicHeight ;
  float picImageWidthPixel4=225.0 ;
  float picImageHeightPixel4= 225.0;
  float picAspectRatio4 = picImageWidthPixel4/picImageHeightPixel4;
  float largerPicDimension4 =smallerPicDimension4*picAspectRatio4; //Aspect Ratio
  if ( picImageWidthPixel4 < largerPicDimension4) {
    while (  picImageWidthPixel4 < largerPicDimension4) {
      largerPicDimension4-=1;
      smallerPicDimension4 -=1;
    }
  }
  image(volImage, volPicX, volPicY, volPicWidth, volPicHeight);

  //
  /*fill(skipColour);
   rect(skipX, skipY, skipWidth, skipHeight);
   if (mouseX>skipX && mouseX<skipX+skipWidth && mouseY>skipY && mouseY<skipY+skipHeight) {
   fill(skipHoverColour);
   rect(skipX, skipY, skipWidth, skipHeight);
   }*/
  //

  fill(skipColour);
  rect(menuX, menuY, menuWidth, menuHeight);
  if (mouseX>menuX && mouseX<menuX+menuWidth && mouseY>menuY && mouseY<menuY+menuHeight) {
    fill(skipHoverColour);
    rect(menuX, menuY, menuWidth, menuHeight);
  }
  //
  if (menuShow == true) {
    fill (blue);
    rect (menuGUIX, menuGUIY, menuGUIWidth, menuGUIHeight);
    fill(green);
    if(currentSong==0) {fill(green);} else
    {fill(otherBackgroundColour);}
    rect(menuSong1X, menuSong1Y, menuSong1Width, menuSong1Height);
    fill(white);
    textAlign(CENTER, CENTER);
    textFont(TimeFont, size);
    String MenuALIVE="Alive";
    text(MenuALIVE, menuSong1X, menuSong1Y, menuSong1Width, menuSong1Height);
    if(currentSong==1) {fill(green);} else
    {fill(otherBackgroundColour);}
        rect(menuSong2X, menuSong2Y, menuSong2Width, menuSong2Height);
    fill(white);
    textAlign(CENTER, CENTER);
    textFont(TimeFont, size);
    String MenuUNOWEN="U.N Owen Was Her";
    text(MenuUNOWEN, menuSong2X, menuSong2Y, menuSong2Width, menuSong2Height);
       if(currentSong==2) {fill(green);} else
    {fill(otherBackgroundColour);}
        rect(menuSong3X, menuSong3Y, menuSong3Width, menuSong3Height);
    fill(white);
    textAlign(CENTER, CENTER);
    textFont(TimeFont, size);
    String MenuGold="Golden Nocturne";
    text(MenuGold, menuSong3X, menuSong3Y, menuSong3Width, menuSong3Height);
  }
  //

  if (mouseX>LoopX && mouseX<LoopX+LoopWidth && mouseY>LoopY && mouseY<LoopY+LoopHeight)
  {
    fill(green);
    rect(LoopX, LoopY, LoopWidth, LoopHeight);
    fill(blue);
    rect(LoopX+LoopWidth*10/100, LoopY+LoopHeight*23/100, LoopWidth*80/100, LoopHeight*1/8);
    fill(blue);
    rect(LoopX+LoopWidth*10/100, LoopY+LoopHeight*48/100, LoopWidth*80/100, LoopHeight*1/8);
    fill(blue);
    rect(LoopX+LoopWidth*10/100, LoopY+LoopHeight*73/100, LoopWidth*80/100, LoopHeight*1/8);
  } else {
    fill(otherBackgroundColour);
    rect(LoopX, LoopY, LoopWidth, LoopHeight);
  } //maybe make them all like if else

  //Image
  //
  if (currentSong==0) songCoverImageShown = songCoverImage;
  CoverImageWidthShown1 = CoverImageWidthAdjusted1;
  CoverImageHeightShown1 = CoverImageHeightAdjusted1;
  imageXCENTER = imageX + (imageWidth-CoverImageWidthAdjusted)/2 ;
  imageXLEFT = imageWidth + imageX - CoverImageWidthAdjusted1;
  imageYCENTER = imageY + (imageHeight-CoverImageHeightAdjusted)/2;
  if (currentSong==1) songCoverImageShown = songCoverImage1;
  CoverImageWidthShown2 = CoverImageWidthAdjusted2;
  CoverImageHeightShown2 = CoverImageHeightAdjusted2;
  imageXCENTER1 = imageX + (imageWidth-CoverImageWidthAdjusted2)/2 ;
  imageXLEFT = imageWidth + imageX - CoverImageWidthAdjusted2;
  imageYCENTER1= imageY + (imageHeight-CoverImageHeightAdjusted2)/2;
  if (currentSong==2) songCoverImageShown = songCoverImage2;
  CoverImageWidthShown = CoverImageWidthAdjusted;
  CoverImageHeightShown = CoverImageHeightAdjusted;
  imageXCENTER2 = imageX + (imageWidth-CoverImageWidthAdjusted1)/2 ;
  imageXLEFT = imageWidth + imageX - CoverImageWidthAdjusted;
  imageYCENTER2 = imageY + (imageHeight-CoverImageHeightAdjusted1)/2;
  if (currentSong==0)   image(songCoverImageShown, imageXCENTER2, imageYCENTER2, CoverImageWidthShown1, CoverImageHeightShown1);
  if (currentSong==1)   image(songCoverImageShown, imageXCENTER1, imageYCENTER1, CoverImageWidthShown2, CoverImageHeightShown2);
  if (currentSong==2)   image(songCoverImageShown, imageXCENTER, imageYCENTER, CoverImageWidthShown, CoverImageHeightShown);

  //
  if (LoopMenu==true) {
    fill(green);
    rect(LoopMX, LoopMY, LoopMWidth, LoopMHeight);
    fill(red);
    rect (LoopMCX, LoopMCY, LoopMCWidth, LoopMCHeight);
    if (mouseX>LoopaddX && mouseX<LoopaddX+LoopaddWidth && mouseY>LoopaddY && mouseY<LoopaddY+LoopaddHeight){
    fill(darkYellow);
    rect(LoopaddX, LoopaddY, LoopaddWidth, LoopaddHeight);} else{    fill(yellow);
    rect(LoopaddX, LoopaddY, LoopaddWidth, LoopaddHeight);}
    textAlign(LEFT, CENTER);
    fill(black);
    String LoopAddText = "+1";
    textFont(TimeFont, size);
    text(LoopAddText, LoopaddX*101/100, LoopaddY, LoopaddWidth, LoopaddHeight);
              if (mouseX>LoopInfX && mouseX<LoopInfX+LoopInfWidth && mouseY>LoopInfY && mouseY<LoopInfY+LoopInfHeight){
       fill(darkYellow);
       rect(LoopInfX, LoopInfY, LoopInfWidth, LoopInfHeight);} else{        fill(yellow);
       rect(LoopInfX, LoopInfY, LoopInfWidth, LoopInfHeight);}
    PImage InfImage;
    String InfPic ="InfiniteSymbol.png";
    InfImage=loadImage(pathway+InfPic);

    float smallerPicDimension5 = (LoopInfWidth< LoopInfHeight)? LoopInfWidth: LoopInfHeight ;
    float picImageWidthPixel5=225.0 ;
    float picImageHeightPixel5= 225.0;
    float picAspectRatio5 = picImageWidthPixel5/picImageHeightPixel5;
    float largerPicDimension5 =smallerPicDimension5*picAspectRatio5; //Aspect Ratio
    if ( picImageWidthPixel5 < largerPicDimension5) {
      while (  picImageWidthPixel5 < largerPicDimension5) {
        largerPicDimension5-=1;
        smallerPicDimension5 -=1;
      }
    }
    image(InfImage, LoopInfX, LoopInfY, LoopInfWidth, LoopInfHeight);
    fill(yellow);
    fill(yellow);
    textFont(TimeFont, size);
    int SkipAmount;
    if (skip == 5000) {
      SkipAmount = 5;
    } else {
      SkipAmount=30;
    }
    text(SkipAmount, SkipSwitchX, SkipSwitchY*140/100);
    fill(yellow);
    textFont(TimeFont, size);
    String SkipSeconds="Seconds";
    text(SkipSeconds, SkipSwitchX, SkipSwitchY*136/100, SkipSwitchWidth*2, SkipSwitchHeight*2);
    
    String SkipSign="Skip Amount:";
    text(SkipSign, SkipSwitchX, SkipSwitchY*120/100, SkipSwitchWidth*2, SkipSwitchHeight*2);
        if (mouseX>SkipSwitchX && mouseX<SkipSwitchX+SkipSwitchWidth && mouseY>SkipSwitchY && mouseY<SkipSwitchY+SkipSwitchHeight){

       fill(darkYellow);
       rect(SkipSwitchX, SkipSwitchY, SkipSwitchWidth, SkipSwitchHeight);} else{        fill(yellow);
       rect(SkipSwitchX, SkipSwitchY, SkipSwitchWidth, SkipSwitchHeight);}
    PImage  SkipSwitchImage;
    String SkipSwitchPic ="SkipSwitch.png";
    SkipSwitchImage=loadImage(pathway+SkipSwitchPic);

    float smallerPicDimension0 = (rewindWidth < rewindHeight)? rewindWidth:rewindHeight ;
    float picImageWidthPixel0=225.0 ;
    float picImageHeightPixel0= 225.0;
    float picAspectRatio0 = picImageWidthPixel0/picImageHeightPixel0;
    float largerPicDimension0 =smallerPicDimension0*picAspectRatio0; //Aspect Ratio
    if ( picImageWidthPixel0 < largerPicDimension0) {
      while (  picImageWidthPixel0 < largerPicDimension0) {
        largerPicDimension0-=1;
        smallerPicDimension0 -=1;
      }
    }
    image(SkipSwitchImage, SkipSwitchX, SkipSwitchY, SkipSwitchWidth, SkipSwitchHeight);
    textAlign(LEFT, CENTER);
    fill(yellow);
    textFont(TimeFont, size);
    LoopCountShow =playlist.loopCount();
    String Looptext = "Loops left:";
    text(Looptext, LoopInfX, LoopInfY*120/100, LoopInfWidth*3, LoopInfHeight);
    if (Infinite == false)
      text(LoopCountShow, LoopInfX, LoopInfY*130/100);
    else {
      text(Inf, LoopInfX, LoopInfY*125/100, LoopInfWidth*3, LoopInfHeight);
    }
        if (mouseX>LightModeX && mouseX<LightModeX+LightModeWidth && mouseY>LightModeY && mouseY<LightModeY+LightModeHeight){
       fill(darkYellow);
    rect(LightModeX, LightModeY, LightModeWidth, LightModeHeight);} else{        fill(yellow);
    rect(LightModeX, LightModeY, LightModeWidth, LightModeHeight);}
    PImage  LightModeImage;
    String LightModePic ="LightMode.png";
    LightModeImage=loadImage(pathway+LightModePic);

    float smallerPicDimension7 = (rewindWidth < rewindHeight)? rewindWidth:rewindHeight ;
    float picImageWidthPixel7=224.0 ;
    float picImageHeightPixel7= 224.0;
    float picAspectRatio7 = picImageWidthPixel7/picImageHeightPixel7;
    float largerPicDimension7 =smallerPicDimension7*picAspectRatio7; //Aspect Ratio
    if ( picImageWidthPixel7 < largerPicDimension7) {
      while (  picImageWidthPixel7 < largerPicDimension7) {
        largerPicDimension7-=1;
        smallerPicDimension7 -=1;
      }
    }
    image(LightModeImage, LightModeX, LightModeY, LightModeWidth, LightModeHeight);
          if (mouseX>NightModeX && mouseX<NightModeX+NightModeWidth && mouseY>NightModeY && mouseY<NightModeY+NightModeHeight){
       fill(darkYellow);
       rect(NightModeX, NightModeY, NightModeWidth, NightModeHeight);} else{        fill(yellow);
       rect(NightModeX, NightModeY, NightModeWidth, NightModeHeight);}
    PImage  MoonImage;
    String MoonPic ="Moon.png";
    MoonImage=loadImage(pathway+MoonPic);

    float smallerPicDimension6 = (rewindWidth < rewindHeight)? rewindWidth:rewindHeight ;
    float picImageWidthPixel6=800.0 ;
    float picImageHeightPixel6= 800.0;
    float picAspectRatio6 = picImageWidthPixel6/picImageHeightPixel6;
    float largerPicDimension6 =smallerPicDimension6*picAspectRatio6; //Aspect Ratio
    if ( picImageWidthPixel6 < largerPicDimension6) {
      while (  picImageWidthPixel6 < largerPicDimension6) {
        largerPicDimension6-=1;
        smallerPicDimension6 -=1;
      }
    }
    image(MoonImage, NightModeX, NightModeY, NightModeWidth, NightModeHeight);
        if (mouseX>RandoModeX && mouseX<RandoModeX+RandoModeWidth && mouseY>RandoModeY && mouseY<RandoModeY+RandoModeHeight) {
    fill(red); } else{fill(yellow);}
      rect (RandoModeX, RandoModeY, RandoModeWidth, RandoModeHeight);
  }
  
}
