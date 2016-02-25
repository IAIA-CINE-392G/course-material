/**********************************************************************************
  Collage.pde
  Loads five images and creates a randomized collage.
  
  Note: It may take a little time to load the images when running the program, 
        as it downloads the images from the Internet.
        
        This program is relatively simple. It has a lot of code because it 
        copies most everything five times (one for each image).
        
        When we learn about arrays and custom functions we will revisit 
        the organization of this program.
***********************************************************************************/


/**********************************************************************************
  Store the image file path to a String variable.
  I'm loading directly from the internet using a web link (URL).
  Alternatively, you can load directly from the data folder inside of your
  Processing project folder.
/**********************************************************************************/
String url1 = "https://upload.wikimedia.org/wikipedia/en/e/e6/Georges_Braque%2C_1909-10%2C_La_guitare_%28Mandora%2C_La_Mandore%29%2C_oil_on_canvas%2C_71.1_x_55.9_cm%2C_Tate_Modern%2C_London.jpg";
String url2 = "https://upload.wikimedia.org/wikipedia/en/a/a0/Albert_Gleizes%2C_1910%2C_Femme_aux_Phlox%2C_oil_on_canvas%2C_81_x_100_cm%2C_exhibited_Armory_Show%2C_New_York%2C_1913%2C_The_Museum_of_Fine_Arts%2C_Houston..jpg";
String url3 = "https://upload.wikimedia.org/wikipedia/en/1/1c/Jean_Metzinger%2C_1910-11%2C_Deux_Nus_%28Two_Nudes%2C_Two_Women%29%2C_oil_on_canvas%2C_92_x_66_cm%2C_Gothenburg_Museum_of_Art%2C_Sweden.jpg";
String url4 = "https://upload.wikimedia.org/wikipedia/en/3/32/Albert_Gleizes%2C_1912-13%2C_Les_Joueurs_de_football_%28Football_Players%29%2C_oil_on_canvas%2C_225.4_x_183_cm%2C_National_Gallery_of_Art.jpg";
String url5 = "https://upload.wikimedia.org/wikipedia/en/8/8b/Fernand_L%C3%A9ger%2C_1911-1912%2C_Les_Fumeurs_%28The_Smokers%29%2C_oil_on_canvas%2C_129.2_x_96.5_cm%2C_Solomon_R._Guggenheim_Museum%2C_New_York..jpg";


/**********************************************************************************
  Create 5 "PImage" variables to store the image pixel data.
***********************************************************************************/
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;


/**********************************************************************************
  This variable is used for the "loop count" in the "for loops" below 
***********************************************************************************/
int loopsPerImage = 10;


/**********************************************************************************
  The setup function (only gets called once per application execution)
**********************************************************************************/
void setup(){
  // set the window size to the HD specification
  size(1920, 1080);          
  
  // load the pixel data from the files into the "PImage" variables
  img1 = loadImage(url1);
  img2 = loadImage(url2);
  img3 = loadImage(url3);
  img4 = loadImage(url4);
  img5 = loadImage(url5);
  
  // I don't want to continously loop the draw function. 
  // I want to redraw on mouse click instead, so I call this function:
  noLoop();
}


/*************************************************************************************** 
  Redraw the window when someone clicks the mouse on the window
****************************************************************************************/
void mousePressed(){
  redraw();  
}


/*************************************************************************************** 
  The draw function (Note: I've called the "noLoop()" function in "setup()"
****************************************************************************************/
void draw(){
  // set the background to black
  background(0);
  
  // img1
  for (int i=0; i<loopsPerImage; i++){
    float s = random(.5, 1.0);           // random scale
    float x = random(0, width);          // random translate x   
    float y = random(0, height);         // random translate y
    float r = random(0, 2*PI);           // random rotate (2*PI = 360 degrees)
    
    float transparency = random(0, 128); // random transparency (from invisible to half transparent)
    tint(255, transparency);             // apply the transparency for subsequent image drawing
    
    pushMatrix();         // create a transformation matrix and push it to the stack
    translate(x, y);      // apply translation
    scale(s);             // apply scale
    rotate(r);            // apply rotation
    
    image(img1, 0, 0);    // draw the image stored in "img1" variable to the window
    
    popMatrix();          // remove the transformation matrix from the stack (resets transformations)
  }
  
  
  // Note: The rest of this program is just a copy of the "for loop" above.
  // The only difference is the image drawn.
  
  
  // img2
  for (int i=0; i<loopsPerImage; i++){
    float s = random(.5, 1.0);
    float x = random(0, width);
    float y = random(0, height);
    float r = random(0, 2*PI);

    float transparency = random(0, 128);
    tint(255, transparency);
    
    pushMatrix();
    translate(x, y);
    scale(s);
    rotate(r);
    
    image(img2, 0, 0);      // draw the image
    
    popMatrix();
  }
  
  // img3
  for (int i=0; i<loopsPerImage; i++){
    float s = random(.5, 1.0);
    float x = random(0, width);
    float y = random(0, height);
    float r = random(0, 2*PI);

    float transparency = random(0, 125);
    tint(255, transparency);
    
    pushMatrix();
    translate(x, y);
    scale(s);
    rotate(r);  
    image(img3, 0, 0);        // draw the image
    popMatrix();
  }

  // img4
  for (int i=0; i<loopsPerImage; i++){
    float s = random(.5, 1.0);
    float x = random(0, width);
    float y = random(0, height);
    float r = random(0, 2*PI);

    float transparency = random(0, 125);
    tint(255, transparency);
    
    pushMatrix();
    translate(x, y);
    scale(s);
    rotate(r);   
    image(img4, 0, 0);         // draw the image
    popMatrix();
  }
 
 // img5
  for (int i=0; i<loopsPerImage; i++){
    float s = random(.5, 1.0);
    float x = random(0, width);
    float y = random(0, height);
    float r = random(0, 2*PI);

    float transparency = random(0, 125);
    tint(255, transparency);
    
    pushMatrix();
    translate(x, y);
    scale(s);
    rotate(r);
    image(img5, 0, 0);          // draw the image
    popMatrix();
  }
   
   
} // closing curly bracket of the draw function
