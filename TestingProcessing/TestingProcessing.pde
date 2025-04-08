int buttonX, buttonY, buttonWidth, buttonHeight;
boolean timerStarted = false;
int startTime = 0; // Variable to store the starting time
int timerLength = 10000; // Timer duration in milliseconds (e.g., 10 seconds)

void setup() {
  size(400, 400);
  buttonX = width / 2 - 50;
  buttonY = height / 2 - 25;
  buttonWidth = 100;
  buttonHeight = 50;
}

void draw() {
  background(200);

  // Draw the button
  fill(100, 200, 100);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Start Timer", buttonX + buttonWidth / 2, buttonY + buttonHeight / 2);

  // Display timer if started
  if (timerStarted) {
    int elapsedTime = millis() - startTime;
    int timeRemaining = max(timerLength - elapsedTime, 0); // Prevent negative time
    fill(0);
    textSize(20);
    text("Time Remaining: " + timeRemaining / 1000 + "s", width / 2, height / 4);

    // Stop the timer when it reaches zero
    if (elapsedTime >= timerLength) {
      timerStarted = false;
      println("Timer finished!");
    }
  }
}

void mousePressed() {
  // Check if the mouse is over the button
  if (mouseX > buttonX && mouseX < buttonX + buttonWidth &&
      mouseY > buttonY && mouseY < buttonY + buttonHeight) {
    timerStarted = true;
    startTime = millis(); // Record the start time
  }
}
