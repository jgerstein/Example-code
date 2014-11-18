PVector loc, vel, acc;      //declare loc, vel, and acc
PVector loc2;
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
  loc2 = new PVector(width/2, height/2);
}

void draw() {
  loc2.set(mouseX, mouseY);
  background(0);
  vel.add(acc);                      //add acceleration to velocity
  loc.add(vel);                      //add velocity to location
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
}

