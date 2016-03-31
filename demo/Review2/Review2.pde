float ypos = 0.0;

void setup() {
  size(1000, 500);
}

void draw() {
  background(0);
  fill(255);
  
  for (int i=0; i<100; i++) {
    rect(i*20, ypos, 20, 20);
  }
  
  ypos += 1.0;
}