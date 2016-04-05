float degree = 0.0;

void setup() {
  size(900, 900);
  noStroke();
}

void draw() {
  fill(0, 0, 0, 10);
  rect(0, 0, width, height); 
  
  translate(width/2, height/2);
  fill(255, 0, 0);
  
  for (int i=0; i<300; i++) {
    rotate(radians(degree));
    ellipse(i, i, 10, 10);
  }
  
  degree += 0.01;
}