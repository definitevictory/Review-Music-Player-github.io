int RwTime = 0;
int TimeLimit = 1000;
Boolean TimeOn = false;
int timeLeft = 0;
void TimeDraw () {
  if (TimeOn==true) {
    int timePassed = millis()- RwTime;
    timeLeft = max(TimeLimit - timePassed, 0);

    if (timeLeft <= 0) {
      TimeOn =false;
      println("timefinish");
    }
  }
}
