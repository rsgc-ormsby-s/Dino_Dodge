// global variables (can be used everywhere below
//Global Variables for the Dino
float dinoY;     // tracks position of dino
float dinoS;     // tracks speed of dino
float dinoA;     // tracks acceleration of the dino
//Global Variables for the Main Program

Cactus c1; //makes a place in memory to keep cactus object

float gravity;   // gravity
float distance; // track distance between dino and a cactus

// this function runs once only
void setup() {
  // draw the canvas
  size(800, 200);

c1 = new Cactus (900, 175, -0.1, -1);

  // set dino initial vertical position
  dinoY = 170;

  // set dino's initial speed
  dinoS = 0;

  // set dino's initial acceleration
  dinoA = 0.5;

  // set gravity
  gravity = 0.075;
}

// this function runs repeatedly
void draw() {
  // background clears each time the program loops
  background(255);

c1.update(gravity);

  // status updates
  textSize(12);
  fill(0);
  text("dinoY is " + dinoY, 150, 25);
  text("dinoS is " + dinoS, 150, 50);
  text("dinoA is " + dinoA, 150, 75);
  text("distance is " + distance, 150, 100);

  //// determine distance between the objects
  ////        dino - cactus
  //float a = dinoY - 175;
  //float b = 50 - x1;
  //distance = sqrt(a*a + b*b);

  //if (distance < (30 + 25)) {
  //  textSize(80);
  //  text("HIT", 100, 100);
  //}

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

// respond to keypress 
void keyPressed() {
  if (dinoY == 170) {
    dinoA = -1;
  }
}