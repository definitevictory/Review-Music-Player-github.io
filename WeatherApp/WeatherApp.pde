import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

 int   appWidth = displayWidth;
  int appHeight = displayHeight;
  int  shorterSide = ( displayWidth < displayHeight) ? displayWidth : displayHeight ;
  
 
void setup() {
  //Display
  fullScreen();
  
  
  
  musicPlayerSetup();
}//End setup
//
void draw() {
  background(lightMode);
  rect(MusicButtonX, MusicButtonY, MusicButtonWidth,MusicButtonHeight);
  fill(darkMode);
  if ( musicButton==true ) {
  musicPlayerDraw();

  }
}//End draw
//
void mousePressed() {
  musicPlayerMousePressed();
  
} //End mousePressed
//
void keyPressed() {
  musicPlayerKeyPressed();
  
  
}//End keyPressed
//
//End MAIN Program
