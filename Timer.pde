class Timer {

  int minutes, totalSeconds;
  int millisAtRestart;

  Timer() {
    millisAtRestart = 0;
  }

  void update() {
    millisAtRestart = millis();
    totalSeconds = millisAtRestart/1000;
  }

  void display() {
    fill(#387A9B, 150);
    textSize(width/4);
    textAlign(CENTER);
    text(millis(), width/2, height/2);
    text(".", width/3, height/2);
  }
  
  void resetTimer(){
    millisAtRestart = 0;
  }
} 
