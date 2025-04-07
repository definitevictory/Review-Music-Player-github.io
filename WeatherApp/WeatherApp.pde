import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int appHeight, appWidth, shorterSide;



void setup() {
  //Display
  fullScreen();

  appWidth = displayWidth;
  appHeight = displayHeight;
  shorterSide = ( displayWidth < displayHeight) ? displayWidth : displayHeight ;

  musicPlayerSetup();

  println("Setup complete");
  println("App Width: " + appWidth + ", App Height: " + appHeight);
}//End setup
//
void draw() {
  background(lightMode);
  fill(blue);
  rect(MusicButtonX, MusicButtonY, MusicButtonWidth, MusicButtonHeight);
  fill(red);
  rect(QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight);
  if ( musicButton==true ) {
    musicPlayerDraw();
  }
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
