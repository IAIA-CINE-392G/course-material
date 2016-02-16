void setup(){
  size(1000, 400);
  noStroke();
}

void draw(){
  
  background(0);
  
  for (int y=0; y<height; y++){
    for (int x=0; x<width; x++){
      color c = color(random(0,255), random(0,255), random(0,255));
  
      fill(c);

      if ( (x % (width/25) == 0) && (y % (height/25) == 0) ){
        ellipse(x+25, y+5, 5, 5);
      }
          
   
    }
  }
}