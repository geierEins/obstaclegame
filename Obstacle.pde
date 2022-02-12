class Obstacle {

  PVector loc = new PVector();
  PVector vel = new PVector();
  int diameter;
  boolean isInsideScreen;

  Obstacle(PVector loc, PVector vel, int diameter) {
    isInsideScreen = false;
    this.loc = loc;
    this.vel = vel;
    this.diameter = diameter;
  }

  void update() {
    loc.add(vel);
    checkBoundaries();
    isInsideScreen();
  }

  void display() {
    fill(#C9BFBF, 150);
    strokeWeight(2);
    circle(this.loc.x, this.loc.y, diameter);
  }

  void checkBoundaries() {
    if (this.loc.x - (diameter/2) < 0 || this.loc.x + (diameter/2) > width) {
      this.vel.x*=-1;
    }
    if (this.loc.y - (diameter/2) < 0 || this.loc.y + (diameter/2) > height) {
      this.vel.y*=-1;
    }
  }

  boolean isInsideScreen() {
    if (loc.x>0 && loc.x < width) {
      isInsideScreen = true;
      return isInsideScreen;
    } else {
      isInsideScreen = false;
      return isInsideScreen;
    }
  }
}
