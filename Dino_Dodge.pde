// global variables (can be used everywhere below)
//Global Variables for the Main Program

Cactus c1; //makes a place in memory to keep cactus object
Dinosaur d1; //makes a place in memory to keep dino object

float gravity;   // gravity
float distance; // track distance between dino and a cactus

// this function runs once only
void setup() {
  // draw the canvas
  size(800, 200);

  c1 = new Cactus (900, 175, -0.1, -1);
  d1 = new Dinosaur (0, 170, 0);
  
  // creates and initializes the dino object 


  // set gravity
  gravity = 0.075;
}

// this function runs repeatedly
void draw() {
  // background clears each time the program loops
  background(255);

  c1.update(gravity);
  d1.update(gravity);
  
  //// status updates
  //textSize(12);
  //fill(0);
  //text("dinoY is " + dinoY, 150, 25);
  //text("dinoS is " + dinoS, 150, 50);
  //text("dinoA is " + dinoA, 150, 75);
  //text("distance is " + distance, 150, 100);

  //// determine distance between the objects
  ////        dino - cactus
  //float a = dinoY - 175;
  //float b = 50 - x1;
  //distance = sqrt(a*a + b*b);

  //if (distance < (30 + 25)) {
  //  textSize(80);
  //  text("HIT", 100, 100);
  //}
}


// respond to keypress 
void keyPressed() {
  //if (dinoY == 170) {
  //  dinoA = -1;
  //}
}