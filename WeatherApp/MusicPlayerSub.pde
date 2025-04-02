Boolean musicButton=false;


void musicPlayerSetup() {

}
void musicPlayerDraw() {
  println("music is playing");
}

void musicPlayerMousePressed() {
}
void musicPlayerKeyPressed() {
  if (key=='m' || key == 'M') {
  if (musicButton ==true)
  {
  musicButton=false;
} else {
  musicButton=true;
}
}
}
