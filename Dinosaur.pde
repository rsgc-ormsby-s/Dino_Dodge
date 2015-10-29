class Dinosaur {

  //Global Variables for the Dino
  float dinoY;     // tracks position of dino
  float dinoS;     // tracks speed of dino
  float dinoA;     // tracks acceleration of the dino

  //Constructor
  Dinosaur(float dY_, float dS_, float dA_) {

    dinoY = dY_;
    dinoS = dS_;
    dinoA = dA_;
  }

  //Update: draws things related to the dino
  void update(float gravity) {

    // Make the Cactus move

    // set dino initial vertical position
    dinoY = 170;

    // set dino's initial speed
    dinoS = 0;

    // set dino's initial acceleration
    dinoA = 0.5;

    // status updates
    textSize(12);
    fill(0);
    text("dinoY is " + dinoY, 150, 25);
    text("dinoS is " + dinoS, 150, 50);
    text("dinoA is " + dinoA, 150, 75);
    text("distance is " + distance, 150, 100);

    // move the dino
    dinoA = dinoA + gravity;
    dinoS = dinoS + dinoA; // change speed based on acceleartion
    dinoY = dinoY + dinoS; // change location based on speed

    //stop the dino if it hits the ground
    if (dinoY > 170) { //bottom of the screen (200) minus the radius
      dinoA = 0;
      dinoS = 0;
      dinoY = 170;
    }

    // draw the dino
    ellipse(50, dinoY, 60, 60);
  }

  //getY
  //
  // Purpose: an accessor method; lets us find out where the dino is (vertically)
  float getY() {
    return dy;
  }

  //setA
  //
  // Purpose: a mutator method; lets the acceleration for the dinasour be set
  //from outside the class
  void setA(float newA_) {
    da = newA_;
  }
  
} // End of Class