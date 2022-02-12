class Player {

  PVector loc = new PVector();
  int diameter = 30;

  Player(PVector loc) {
    this.loc = loc;
  }

  void update() {
    loc.x = mouseX;
    loc.y = mouseY;
  }

  void display() {
    fill(#E05858);
    circle(this.loc.x, this.loc.y, diameter);
  }

  boolean collidesWithObstacle(Obstacle obstacle) {
    PVector distBetweenPlayerAndObstacle = PVector.sub(obstacle.loc, loc);
    if (distBetweenPlayerAndObstacle.mag() <= ((diameter/2)+(obstacle.diameter/2))) {
      return true;
    } else {
      return false;
    }
  }
}
