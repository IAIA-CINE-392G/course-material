// Requires Particle and GenParticle classes

int numParticles = 200;
MyParticle[] p = new MyParticle[numParticles];

void setup() {
  size(400, 400);
  noStroke();
  for (int i = 0; i < p.length; i++) {
    float velX = random(-1, 1);
    float velY = -i;
    // Inputs: x, y, x-velocity, y-velocity, 
    //         radius, origin x, origin y
    p[i] = new MyParticle(width/2, height/2, velX, velY, 5.0, width/2, height/2);
  }
}

void draw() {
  // trails
  fill(0, 36);
  rect(0, 0, width, height);

  // loop through each particle
  for (MyParticle part : p) { 
    part.update();
    part.regenerate();
    part.display(); 
  }
  
}