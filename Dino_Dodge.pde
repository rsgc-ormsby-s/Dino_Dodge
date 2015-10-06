//global vartiables (can be used everywhere below)

int x;     // tracks horizontal positon of first cactus

// This Function runs Only Once
void setup() {
  size(800, 200);
  
  //set the intial position of the cactus
  x = 900; // position it off-screen on the right
}

// This function runs repeatedly
void draw() {
  // background clears each time the program loops
  background(255);
  
  // draw a circle at bottom right corner of the screen
  //       x    y    w   h
  ellipse(x, 175, 50, 50);
  
  // create the appearence of moving by changing the x position
  x = x - 1;
}