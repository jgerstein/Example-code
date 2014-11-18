

PVector loc, vel, acc;      //declare loc, vel, and acc
PVector loc2, vel2, acc2;
int sz = 50;
int sz2 = 100;
float mag = 1;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 600);
  loc = new PVector(width/2, height/2);      //initialize location
  vel = PVector.random2D();                  //initialize velocity
  acc = new PVector();                       //initialize acceleration
  noStroke();
  loc2 = new PVector(width/4, height/4);
  vel2 = PVector.random2D();
  acc2 = new PVector();
}

void draw() {

  background(0);
  vel.add(acc);                      //add acceleration to velocity
  loc.add(vel);                      //add velocity to location
  vel2.add(acc2);
  loc2.add(vel2);
  ellipse(loc.x, loc.y, sz, sz);     //draw an ellipse
  ellipse(loc2.x, loc2.y, sz2, sz2);

  if (loc.dist(loc2) < sz/2 + sz2/2) {    //if the balls are touching...
    fill(0, 100, 100);                    //...fill with red
  } else {                                //otherwise...
    fill(200, 100, 100);                  //...fill with a lovely shade of blue
  }

  //Make the ball wrap around the screen  
  if (loc.x -sz/2 > width) {
    loc.x = -sz/2;
  }
  if (loc.x + sz/2 < 0) {
    loc.x = width+sz/2;
  } 
  if (loc.y -sz/2 > height) {
    loc.y = -sz/2;
  }
  if (loc.y + sz/2 < 0) {
    loc.y = height+sz/2;
  }
  if (loc2.x -sz2/2 > width) {
    loc2.x = -sz2/2;
  }
  if (loc2.x + sz2/2 < 0) {
    loc2.x = width+sz2/2;
  } 
  if (loc2.y -sz2/2 > height) {
    loc2.y = -sz2/2;
  }
  if (loc2.y + sz2/2 < 0) {
    loc2.y = height+sz2/2;
  }
}

void mousePressed() {
  vel = PVector.random2D();
  vel2 = PVector.random2D();
}

void keyPressed() {
  loc2.set(mouseX, mouseY);
}

