class Circle{
  
  Position pos;
  float r;
  color c;
  
  Circle(float x, float y, float d, color c){
     pos = new Position(x, y);
     this.r = d/2;
     this.c = c;
  }
  
  boolean intersects(Circle other) {
    float distance = dist(this.pos.x, this.pos.y, other.pos.x, other.pos.y);
    if(distance < this.r + other.r){
      return true;
    }else{
     return false; 
    }
    
  }
  
  void display(){
    ellipseMode(CENTER);
    //stroke(1);
    noStroke();
    fill(c);
    ellipse(pos.x, pos.y, r*2, r*2);
  }
  
}