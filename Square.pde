class Square{
  
  Position pos;
  float len;
  color c;
  
  Square(float x, float y, float len, color c){
     pos = new Position(x, y);
     this.len = len;
     this.c = c;
  }
  
  boolean intersects(Square other) {
    float left = pos.x;
    float right = pos.x + len;
    float top = pos.y;
    float bottom = pos.y + len;
    
    float oleft = other.pos.x;
    float oright = other.pos.x + other.len;
    float otop = other.pos.y;
    float obottom = other.pos.y + other.len;
    
    return !(left >= oright ||
      right <= oleft ||
      top >= obottom ||
      bottom <= otop);
  }
  
  void display(){
    stroke(1);
    //noStroke();
    fill(c);
    rect(pos.x, pos.y, len, len);
  }
  
}