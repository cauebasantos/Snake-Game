int GRID = 20;

Snake snake;
Food food;

void setup() {
  size(640, 480);

  snake = new Snake();
  food = new Food();

  frameRate(8);
}

void draw() {

  if (!snake.isDead()) {
    
    fill(155);
    rect(0, 0, width, height);
    fill(21);
    rect(GRID, GRID, width - 2*GRID, height - 2*GRID);


    if (snake.intersects(food)) {
      snake.eat();
      food = new Food();
    }

    food.display();

    snake.move();
    snake.display();
  }
  else{
    
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      snake.setDir(0, -1);
    } else if (keyCode == DOWN) {
      snake.setDir(0, 1);
    } else if (keyCode == RIGHT) {
      snake.setDir(1, 0);
    } else if (keyCode == LEFT) {
      snake.setDir(-1, 0);
    }
  }
}