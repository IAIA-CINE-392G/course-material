float xpos = 0;

void setup(){
  size(1024, 1024);
}

void draw(){
  background(0);
  fill(255);
    
  for (int i=0; i<20; i++){
    ellipse(xpos, (i*50), 50, 50);
  }
  
  xpos += 1.0;
}