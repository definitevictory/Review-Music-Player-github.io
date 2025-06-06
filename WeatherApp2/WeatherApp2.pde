import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import java.io.File;

int appHeight, appWidth, shorterSide;
PFont appFont;


void setup() {
  //Display
  fullScreen();
  minim = new Minim(this);
  appWidth = displayWidth;
  appHeight = displayHeight;
  shorterSide = ( displayWidth < displayHeight) ? displayWidth : displayHeight ;
   appFont = createFont("Ink Free", shorterSide);
     textAlign(CENTER, CENTER);
  textFont(appFont, fontSize);
  musicPlayerSetup();


  println("Setup complete");
  println("App Width: " + appWidth + ", App Height: " + appHeight);
  playlist[currentSong].pause(); //stop music player because all my other code starts it before the setup finishes.
}//End setup
//
void draw() {
  background(lightMode);
  fill(darkBlue);
  rect(MusicButtonX, MusicButtonY, MusicButtonWidth, MusicButtonHeight);
  fill(red);
  rect(QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight);
  if ( musicButton==true ) {
    musicPlayerDraw();
    TimeDraw ();
  }
   //println(timeLeft);
}//End draw
//
void mousePressed() {
  musicPlayerMousePressed();
  if (mouseX>QuitButtonX && mouseX<QuitButtonX+QuitButtonWidth && mouseY>QuitButtonY && mouseY<QuitButtonY+QuitButtonHeight) {
    exit();
  }
} //End mousePressed
//
void keyPressed() {
  musicPlayerKeyPressed();
}//End keyPressed
//
//End MAIN Program
