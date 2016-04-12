/* 

Drawing with pixels
https://processing.org/tutorials/pixels/

*/

PImage img;       // The source image
int cellsize = 1; // Dimensions of each cell in the grid
int cols, rows;   // Number of columns and rows in our system
String url = "IMG_2357_8_9.jpg";

void setup() {
  size(1024, 1024, P3D); 
  img  = loadImage(url); // Load the image
  cols = img.width/cellsize;             // Calculate # of columns
  rows = img.height/cellsize;            // Calculate # of rows
}

void draw() {
  background(0);
  loadPixels();

  // Begin loop for columns
  for ( int i = 0; i < cols;i++) {
    // Begin loop for rows
    for ( int j = 0; j < rows;j++) {
      int x = i*cellsize + cellsize/2; // x position
      int y = j*cellsize + cellsize/2; // y position
      int loc = x + y*img.width;           // Pixel array location
      color c = img.pixels[loc];       // Grab the color
      // Calculate a z position as a function of mouseX and pixel brightness
      float z = (mouseX/(float)img.width) * brightness(img.pixels[loc]) - 100.0;
      
      // Translate to the location, set fill and stroke, and draw the rect
      pushMatrix();
      translate(x,y,z);
      fill(c);
      noStroke();
      rectMode(CENTER);
      rect(0,0,cellsize,cellsize);
      popMatrix();
    }
  }
}