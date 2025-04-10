void autoPlayOff() {
  autoPlay = false;
  playlist[currentSong].pause();
}
void autoPlayOn() {
  autoPlay = true;
  playlist[currentSong].play();
}
void nextSongCheck() {
  if (currentSong ==2) {
    currentSong = 0;
    playlist[currentSong].play();
  } else {
    currentSong+=1;
    playlist[currentSong].play();
  }
}
void prevSongCheck() {
  if (currentSong ==0) {
    currentSong =2;
  } else {
    currentSong-=1;
  }
}

void startTimer() {
  TimeOn= false;
  TimeOn = true;
  RwTime = millis();
}
