class ObstacleSystem {

  ArrayList<Obstacle> obstacles;

  ObstacleSystem() {
    obstacles = new ArrayList<Obstacle>();
  }

  void update() {
    for (int i = 0; i < obstacles.size(); i++) {
      obstacles.get(i).update();
    }
  }

  void display() {
    for (int i = 0; i < obstacles.size(); i++) {
      obstacles.get(i).display();
    }
  }

  void addObstacle() {
    obstacles.add(new Obstacle(new PVector(width/2, height/2), 
      new PVector(random(-3.5, 3.5), random(-3.5, 3.5)), (int)random(10, 70)));
  }
}
