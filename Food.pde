class Food extends Circle {

  Food() {
    super(int(random(2, width/GRID - 2))*GRID, int(random(2, height/GRID - 2))*GRID, GRID, 
      color(random(255), random(255), random(255)));
  }
}