import processing.video.*;
Movie myMovie;
int pointillize = 20;

PImage img;

void setup() {
  background(0);  
  size(1920, 1080);
  myMovie = new Movie(this, "test.mp4");
  img = createImage(1920, 1080, RGB);
  myMovie.play();

}

void draw() {
   //image(myMovie, 0, 0);
   myMovie.loadPixels();
  img = myMovie.get();
  for(int i = 0; i<250; i++){
    drawPoint();
  }
  //drawPoint();
  updatePixels();
}

void movieEvent(Movie m) {
  m.read();
  img = m.get();
  img.updatePixels();
  drawPoint();
}

void drawPoint() {
  // Pick a random point
  int x = int(random(width));
  int y = int(random(height));
  int loc = x + y*img.width;

  // Look up the RGB color in the source image
  img.loadPixels();

  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();

  // Draw an ellipse at that location with that color
  fill(r,g,b,75);
  ellipse(x, y, pointillize, pointillize);
}