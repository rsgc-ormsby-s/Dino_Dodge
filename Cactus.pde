class Cactus {
  //Global Variables for the Cactus
  float x1;    // tracks horizontal position of first cactus
  float s1;    // speed for first cactus
  float a1;    // acceleration for first cactus
  float y1; // Tracks the vertical position of the cactus.

  //Constructor 
  Cactus(float x_, float y_, float a_, float s_) {
    x1 = x_;
    s1 = s_;
    a1 = a_;
    y1 = y_;
  }

  //Update: draws things related to cactus
  void update(float gravity) {
    //Make the Cactus move

    // change the speed
    s1 = s1 + a1;

    // create the appearance of moving by changing the x position
    x1 = x1 + s1;

  // put the cactus back on the right edge if it goes off the left edge
    if (x1 < -25) {
      x1 = 900; // place off screen on right 
      s1 = -1;  // reset the speed (to avoid insanely fast movement)
    }
    // draw a circle at bottom right corner of the screen
    //       x    y    w   h
    ellipse(x1, 175, 50, 50);
  }
}