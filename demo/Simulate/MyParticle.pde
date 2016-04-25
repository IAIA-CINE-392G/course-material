class MyParticle extends Particle {
  float originX, originY;
  color myColor;
  
  MyParticle(int xpos, int ypos, float velx, float vely, 
              float r, float ox, float oy) {
    super(xpos, ypos, velx, vely, r);
    originX = ox;
    originY = oy;
    randomColor();
  }
  
  void regenerate() {
    if ((x > width+radius) || (x < -radius) || 
        (y > height+radius) || (y < -radius)) {
      x = originX;
      y = originY;
      vx = random(-1.0, 1.0);
      vy = random(-4.0, -2.0);
      randomColor();
    } 
  }
  
  void randomColor(){
    myColor = color(random(256), random(256), random(256));
  }
  
  void display() {
    fill(myColor);
    super.display();
  }
}