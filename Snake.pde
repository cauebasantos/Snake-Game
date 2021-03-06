class Snake {

  Circle[] body;
  int bodyLength;
  int maxLength;
  float xdir;
  float ydir;
  float pxdir;
  float pydir;
  float speed;
  color c;

  Snake() {   
    speed = GRID;
    maxLength = 200;
    bodyLength = 1;
    c = color(21, 151, 21);
    body = new Circle[maxLength];
    body[0] = new Circle(width/2, height/2, GRID, c);
  }

  boolean intersects(Circle sqr) {
    return body[0].intersects(sqr);
  }


  void eat() {
    bodyLength++; 
    body[bodyLength - 1] = new Circle(body[bodyLength - 2].pos.x, 
      body[bodyLength - 2].pos.y, GRID, c);
  }

  void setDir(float x, float y) {
    pxdir = xdir;
    pydir = ydir;
    xdir = x;
    ydir = y;
  }

  void move() {

    if ((xdir * pxdir == -1 && ydir * pydir == 0) ||
      (xdir * pxdir == 0 && ydir * pydir == -1)) {
      xdir = pxdir;
      ydir = pydir;
    }

    for (int i = bodyLength -1; i > 0; i--) {
      body[i].pos.x = body[i - 1].pos.x;
      body[i].pos.y = body[i - 1].pos.y;
    }

    body[0].pos.x += xdir * speed;
    body[0].pos.y += ydir * speed;
  }

  void display() {
    for (int i = 0; i < bodyLength; i++) {
      body[i].display();
    }
  }

  boolean isDead() {
    for (int i = 1; i < bodyLength; i++) {
      if (body[0].intersects(body[i])) {
        return true;
      }
    }
    if((body[0].pos.x - body[0].r < GRID/2 || body[0].pos.x > width - body[0].r - GRID/2) || 
    (body[0].pos.y - body[0].r < GRID/2 || body[0].pos.y > height - body[0].r - GRID/2)){
      return true;
    }
    return false;
  }
}