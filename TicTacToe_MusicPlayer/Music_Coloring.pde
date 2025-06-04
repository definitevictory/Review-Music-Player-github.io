void Coloring() {


  CoverImages();
  fill(grey);
  rect(MusicIMGX, MusicIMGY, MusicIMGWidth, MusicIMGHeight);
  if (currentSong ==0) {
    image(IMG[0], IMGXChanged[0], IMGYChanged[0], IMGWidthChanged[0], IMGHeightChanged[0]);
  }
  if (currentSong ==1) {
    image(IMG[1], IMGXChanged[1], IMGYChanged[1], IMGWidthChanged[1], IMGHeightChanged[1]);
  }
  if (currentSong ==2) {
    image(IMG[2], IMGXChanged[2], IMGYChanged[2], IMGWidthChanged[2], IMGHeightChanged[2]);
  }
  //println(IMG[0],IMGXChanged[0], IMGYChanged[0], IMGWidthChanged[0], IMGHeightChanged[0]);

  String PlayIMGPath = "../images/play3.png";
  String MoonIMGpath = "../images/Moon.png";
  MoonIMG = loadImage(MoonIMGpath);
  PlayIMG = loadImage(PlayIMGPath);
  int PlayIMGWidth = 225;
  int PlayIMGHeight = 225;
  float PlayBiggerSideRatio = (PlayIMGHeight >= PlayIMGWidth) ? float(PlayIMGWidth)/float(PlayIMGHeight): float(PlayIMGHeight)/float(PlayIMGWidth);
  //println(AliveBiggerSideRatio);
  Boolean PlayLandscape = (PlayIMGWidth>=PlayIMGHeight)? true:false;
  if (PlayLandscape == false) {
    PlayIMGWidthChanged = PlayButtonWidth;
    PlayIMGHeightChanged = (PlayIMGHeight >= PlayButtonHeight) ? PlayIMGWidthChanged/PlayBiggerSideRatio : PlayIMGWidthChanged*PlayBiggerSideRatio;
    if (PlayIMGHeightChanged >= PlayButtonHeight) {
      println("awoadooaodooo");

      exit();
    }
    PlayIMGXChanged = PlayButtonX;
    float leftOverHeight2 = ( PlayButtonHeight - PlayIMGHeightChanged)*1/2;
    PlayIMGYChanged = PlayButtonY + leftOverHeight2;
  } else {
    PlayIMGHeightChanged = PlayButtonHeight;
    PlayIMGWidthChanged = (PlayIMGWidth >= PlayButtonWidth) ? PlayIMGHeightChanged/PlayBiggerSideRatio : PlayIMGHeightChanged*PlayBiggerSideRatio;
    if (PlayIMGWidthChanged >= PlayIMGWidth) {
      println("oaodooo");
      exit();
    }
    PlayIMGYChanged = PlayButtonY;
    float leftOverWidth2 = ( PlayButtonWidth - PlayIMGWidthChanged)*1/2;
    PlayIMGXChanged = PlayButtonX + leftOverWidth2;
  }


  String SkipIMGPath = "../images/forward2.png";
  SkipIMG = loadImage(SkipIMGPath);
  String NextIMGPath = "../images/NextSong.png";
  NextIMG = loadImage(NextIMGPath);
  //
  String PauseIMGPath = "../images/pause2.png";
  PauseIMG = loadImage(PauseIMGPath);

  String BackwardsIMGPath = "../images/reverse2.png";
  BackwardsIMG = loadImage(BackwardsIMGPath);
  String PrevIMGPath = "../images/Previous.png";
  PrevIMG = loadImage(PrevIMGPath);
  String RestartIMGPath = "../images/Restart.png";
  RestartIMG = loadImage(RestartIMGPath); // all of these images have the same aspect ratio as play button image, so i can use about the same dimensions for my images

  //centering
  //println(IMGXChanged, IMGYChanged, IMGWidthChanged, IMGHeightChanged);

  fill(yellow);
  rect(ColorChangeX, ColorChangeY, ColorChangeWidth, ColorChangeHeight);
  image(MoonIMG, PlayIMGXChanged- PlayButtonX + ColorChangeX, ColorChangeY, PlayIMGHeightChanged, PlayIMGWidthChanged);
  fill(red);
  rect(PauseButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight);
  fill(green);
  rect(PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight);

  if ( playlist[currentSong].isPlaying()) {
    if (TimeOn==true) {
      image(NextIMG, PlayIMGXChanged, PlayIMGYChanged, PlayIMGHeightChanged, PlayIMGWidthChanged);
    } else {
      image(SkipIMG, PlayIMGXChanged, PlayIMGYChanged, PlayIMGHeightChanged, PlayIMGWidthChanged);
    }
  } else {
    image(PlayIMG, PlayIMGXChanged, PlayIMGYChanged, PlayIMGHeightChanged, PlayIMGWidthChanged);
  }


  if ( !playlist[currentSong].isPlaying()) {
    if (TimeOn == true) {
      if (playlist[currentSong].position() < playlist[currentSong].length()*0.1) {
        image(PrevIMG, PlayIMGXChanged- PlayButtonX + PauseButtonX, PlayIMGYChanged, PlayIMGHeightChanged, PlayIMGWidthChanged);
      } else {
        image(RestartIMG, PlayIMGXChanged- PlayButtonX + PauseButtonX, PlayIMGYChanged, PlayIMGHeightChanged, PlayIMGWidthChanged);
      }
    } else {
      image(BackwardsIMG, PlayIMGXChanged- PlayButtonX + PauseButtonX, PlayIMGYChanged, PlayIMGHeightChanged, PlayIMGWidthChanged);
    }
  } else {
    image(PauseIMG, PlayIMGXChanged- PlayButtonX + PauseButtonX, PlayIMGYChanged, PlayIMGHeightChanged, PlayIMGWidthChanged);
  }
  fill(lightGrey);
  rect(BarX, BarY, BarWidth, BarHeight);
  fill(green);
  progressBarWidth = BarWidth*playlist[currentSong].position()/playlist[currentSong].length();
  rect(BarX, BarY, progressBarWidth, BarHeight);
  fill(white);
  rect(TimeBeginX, TimeBeginY, rectDIVWidth[0], rectDIVHeight[0]);
  rect(SongNameX, SongNameY, rectDIVWidth[1], rectDIVHeight[1]);
  textStrings();
  textSetup();
  fill(blue);
  textFont(appFont, fontSize);
  text(string[0], TimeBeginX, TimeBeginY, rectDIVWidth[0], rectDIVHeight[0]);

  text(string[1], SongNameX, SongNameY, rectDIVWidth[1], rectDIVHeight[1]);
  //println(fontSize);
  fill(white);
  rect(VolX,VolY,VolWidth,VolHeight);
  fill(green);
  rect(VolX,VolY2,VolWidth,VolHeight*(Vol[currentSong]+30)/-30);
  fill(red);
  rect(VolUPX, VolUPY, PlayButtonWidth/2, PlayButtonHeight/2);
  rect(VolUPX, VolDOWNY, PlayButtonWidth/2, PlayButtonHeight/2);
  //rect(VOLUMEX, VOLUMEY,PlayButtonWidth, PlayButtonHeight);
}
