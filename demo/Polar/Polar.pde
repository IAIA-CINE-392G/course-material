float radius = 0.0;

void setup(){
  size(1024, 1024);
  smooth(8);
}

void draw(){
  background(0);
  translate(width/2, height/2);
  
  if (key == '1'){
    for (int i=0; i<10; i++){
      drawCircles(i);
    }
  } else if (key == '2'){
    for (int i=0; i<2; i++){
      drawSpiral(i);
    }
  } else if (key == '3') {
    for (int i=0; i<1; i++){
      drawLines(i);
    }
  } else if (key == '4') {
    for (int i=0; i<100; i++){
      drawShape(i);
    }
  }
  
}

void drawCircles(float inc){
  noStroke();
  fill(138, 154, 156, 234);
  radius = 125 * inc + 140;

  for (float deg = 0; deg < 360*1; deg += 360.0/36.0){ 
    float angle = radians(deg);
    float x = cos(angle) * radius;
    float y = sin(angle) * radius;
    ellipse(x, y, 25, 25);  
  }
  
}

void drawSpiral(float inc){
  noStroke();
  fill(139, 86, 84, 61);
  radius = 12 * 12 + 26;

  for (float deg = -180; deg < 360*8; deg += 360.0/180.0){ 
    float angle = radians(deg);
    float x = cos(angle) * radius;
    float y = sin(angle) * radius;
    ellipse(x, y, 10, 10);  
    radius = radius + 0.33;
  }
  
}

void drawLines(float inc){
  fill(139, 86, 84, 61);
  radius = 270 * inc + 100;

  for (float deg = 0; deg < 360*1; deg += 360.0/180.0){ 
    float angle = radians(deg);
    float x = cos(angle) * radius;
    float y = sin(angle) * radius;
    stroke(255, 255, 255, 255);
    line(x, y, x*5, y*5);
  }
  
}

void drawShape(float inc){
  noFill();
  strokeWeight(2);
  radius = 30 * inc + 50;
 
  // shape begin
  beginShape();

  for (int deg = 45; deg<360+45; deg +=90) {
    float angle = radians(deg);    
    float x = cos(angle) * radius;
    float y = sin(angle) * radius;
    stroke(255, 255, 255, 100);
    vertex(x, y);
  }
   
  endShape(CLOSE);    // shape end  
}
