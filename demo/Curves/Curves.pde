void setup(){
  size(1000, 1000);
  noFill();
  noLoop();
  background(0);
}

void draw(){
  background(0);

  for (int i=0; i<10000; i++){
    float x1 = random(0,width);
    float y1 = random(0,height);
    float x2 = random(0,width);
    float y2 = random(0,height);
    float x3 = random(0,width);
    float y3 = random(0,height);
    float x4 = random(0,width);
    float y4 = random(0,height);
  
    color c1 = color(random(0,0), random(0,0), random(0,100));
  
    strokeWeight(random(0,25));
    stroke(c1);
    
    curve(x1,y1,x2,y2,x3,y3,x4,y4);
  }
}

void keyPressed() {
  redraw();
}