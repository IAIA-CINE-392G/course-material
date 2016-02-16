void setup(){
  size(400, 400);
  noStroke();
}

void draw(){
  background(0);
  for (int y=0; y<400; y++){
    for (int x=0; x<400; x++){
      color c = color(random(0,255), random(0,255), random(0,255));
      set(x,y, c);
    }
  }
}