// global variables
int maxRings = 30;            // max rings
int ringCount = 1;            // number of rings
float growIndex = 1;          // grow animation index
float rotateInc = 0;          // rotation increment
float rotateIndex = 0;        // rotation index

// setup
void setup(){
  size(1024,1024,P3D);
}

// draw
void draw(){
  background(0);
  translate(width/2, height/2);

  growAnimation();
  
  if (ringCount >= maxRings) {
      rotateAnimation();
  }
  
  for (int i = int(-growIndex); i<ringCount; i++) {
      drawShape(i+growIndex);
  }
}

// draw shape
void drawShape(float inc){
  noFill();
  strokeWeight(2);
  float radius = 30 * inc + 50;
 
  rotate(radians(-rotateInc*radius*0.001));

  // shape begin
  beginShape();

  for (int deg = 45; deg<360+45; deg +=90) {
    float angle = radians(deg);    
    float x = cos(angle) * radius;
    float y = sin(angle) * radius;
    stroke(255, 255, 255, 100);
    
    alphaAnimation(inc);
    vertex(x, y);
  }
   
  endShape(CLOSE);    // shape end  
}

// fade alpha by ring size
void alphaAnimation(float ringIndex){
  float pct = ringIndex/float(maxRings);
  float alpha = pow(pct, 1.1);
  alpha = map(alpha, 0.0, 1.0, 10, 125.0);    
  stroke(255, 255, 255, alpha);
}

// grow animation
void growAnimation(){
  if (frameCount % 10 == 0 && frameCount % 10 <= 2) {
    if (ringCount <= maxRings){
      ringCount++;
    }
    growIndex += .333;
  }
}

// rotate animation
void rotateAnimation(){
    float pct = rotateIndex / 10.0;
    rotateInc -= (1-pow(pct, 2)) * .0001; 
    rotateIndex++;
}