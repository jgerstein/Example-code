//declare and initialize the GravityBall array
GravityBall[] g = new GravityBall[100];
//float[] numbers = new float[100];    //this is here for comparison

void setup() {
  size(800, 600);
  colorMode(HSB,360,100,100,100);
  //for each individual spot in the array, declare a new GravityBall
  for (int i = 0; i < g.length; i++) {
    g[i] = new GravityBall();
    //  numbers[i] = random(100);      //this is here for comparison
  }
}

void draw() {
  background(0);
  //go through the array, and call the methods I want on each GravityBall
  for (int i = 0; i < g.length; i++) {
    g[i].display();
    g[i].move();
    g[i].bounce();
  }
}











class GravityBall {
  ////list information about the gravity ball
  //location
  //acceleration
  //velocity
  //size

  //declare variables
  PVector loc, vel, acc;
  float sz;
  float hue,sat,bright,alpha;

  //fill in the template with actual values
  //create a constructor
  GravityBall() {
    //inside here, we initialize variables and run any code that should occur at the moment the object is created
    sz = 50;
    loc = new PVector(random(sz, width-sz), random(height/2));
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
    hue = random(360);
    sat = 100;
    bright = 100;
    alpha = 70;
  }
  ////////////////////////////////////////////////////////////
  //below this line, we will define what a gravity ball does//
  ////////////////////////////////////////////////////////////

  //what does a gravity ball do?
  //bounce, moves, gets drawn, accelerates(part of moving)

  void display() {
    //display the ball
    fill(hue,sat,bright,alpha);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    //move the ball
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {
    //bounce ball off of floor
    if (loc.y > height - sz/2) {
      loc.y = height - sz/2;
      vel.y = -abs(vel.y);
    }
  }
}

