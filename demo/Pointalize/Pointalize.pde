/* 

Drawing with pixels
https://processing.org/tutorials/pixels/

*/

PImage img;
int pointillize = 16;
String url = "IMG_2357_8_9.jpg";

void setup() {
  size(1024,1024);
  img = loadImage(url);
  background(0);
  smooth();
}

void draw() {
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  
  // Draw an ellipse at that location with that color
  fill(r,g,b,75);
  ellipse(x,y,pointillize,pointillize);
}