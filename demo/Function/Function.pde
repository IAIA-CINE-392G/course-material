int numberOfDrawCalls;

void setup(){
  size(500, 500);
}

void draw(){
  background(0);
  
  if (key == 'a'){
    numberOfDrawCalls = drawTwoCircles(200, 200);
    println( "drawTwoCircles:", numberOfDrawCalls);
  } else if (key == 'b'){
    numberOfDrawCalls = drawFiveSquares(10, 10);
    println( "drawFiveSquares:", numberOfDrawCalls);    
  }
}

int drawTwoCircles(int x, int y){
  fill(128);
  ellipse(x, y, 100, 100);
  ellipse(x+100, y, 100, 100);
  return 2;
}

int drawFiveSquares(int x, int y){
  fill(255);
  for (int i=0; i<5; i++){
    rect(x+i*50, y, 50, 50);
  }
  return 5;
}