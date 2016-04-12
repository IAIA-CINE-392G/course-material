PImage img;
PImage destination;  // Destination image

String url = "http://www.santafehometownnews.com/sites/g/files/g901906/f/media_crop/32911/public/201512/01_mountain.jpg";

int increment = 1;

void setup() {
  size(768, 576);
  img = loadImage(url, "jpg");
    // The destination image is created as a blank image the same size as the source.

    destination = createImage(img.width, img.height, RGB);

}


void draw() {
  background(0);

  img.loadPixels(); 


  for (int y = 0; y < img.height; y++) {
    for (int x = 0; x < img.width; x++) {
      int loc = x + y*img.width;

      // The functions red(), green(), and blue() pull out the 3 color components from a pixel.
      color c = img.pixels[loc];
      float r = red(c);
      float g = green(c);
      float b = blue(c);

      // image processing here
      float bright = brightness(c);
      
      if (bright < int(random(0,175))){
        c = color(0);
      }
      
      //r = random(100);
      //c = color(r,g,b);
    
      // Set the image pixel to the new color
      //img.pixels[loc] = c;
      destination.pixels[loc] = c;
    }
  }


  destination.updatePixels();
  image(destination, 0, 0, width, height);
}