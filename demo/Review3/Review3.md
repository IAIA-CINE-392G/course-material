**Part 1: Draw**  
1. Create a setup and draw function  
2. Set the window size to 900 by 900 
3. Turn off stroke 
4. In the draw function, use the translate function to center within the window
5. Set the fill color to red
6. Draw a circle in the center of the window with a diameter of 10

**Part 2: Repeat**  
1. Add a for loop to draw the circle 300 times - start at zero and increment by one
2. Set the circle's x and y position to the loop's counter variable

**Part 3: Animate**  
1. Create a global float variable called "degree" and assign it the value of 0.0
2. Add a rotate function just before the ellipse function. Use the "degree" variable as the rotate value
3. Increment the "degree" "variable by 0.01 at the end of the draw function  

**Part 4: Effect**  
1. At the beginning of the draw function set the fill to black with an alpha of 10
2. Create a rectangle with a position of zero and a size equal to the window's dimensions