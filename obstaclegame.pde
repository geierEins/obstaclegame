Player player;
Obstacle testObst;
ObstacleSystem obstacleSystem;
int numberOfObstacles = 25;
Timer timer;

void setup() {
  size(600, 600);
  frameRate(60);
  timer = new Timer();
  player = new Player(new PVector(width/2, height/2));
  obstacleSystem = new ObstacleSystem();
  for (int i = 1; i<=numberOfObstacles; i++) {
    obstacleSystem.addObstacle();
  }
}

void draw() {
  background(#D3D3D3);
  timer.update();
  timer.display();
  player.update();
  player.display();
  obstacleSystem.update();
  obstacleSystem.display();



  for (int i = 0; i < obstacleSystem.obstacles.size(); i++) {
    if (player.collidesWithObstacle(obstacleSystem.obstacles.get(i)) && 
      millis()>=2000) {
      delay(100000);
    }
  }
}

void reset(){
    frameCount = -1;
}

void mousePressed() {
}
