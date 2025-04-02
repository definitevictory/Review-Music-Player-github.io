

void setup() {
  //Display
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  musicPlayerSetup();
}//End setup
//
void draw() {
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
