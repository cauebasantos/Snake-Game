class Food extends Square {

  Food() {
    super(int(random(1, width/GRID - 1))*GRID, int(random(1, height/GRID - 1))*GRID, GRID, 
      color(random(255), random(255), random(255)));
  }
}