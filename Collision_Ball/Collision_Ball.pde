//declare loc, vel, and acc
PVector loc, vel, acc;
int sz = 70;

void setup() {
  size(800, 600);
  //initialize loc, vel, and acc
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();    //random unit vector
  acc = new PVector(0, 0);
  noCursor();
}

void draw() {
  background(0);
  //move the ball
  vel.add(acc);
  loc.add(vel);

  //check to see if the mouse is inside the circle
  if (dist(mouseX, mouseY, loc.x, loc.y) < sz/2) {  //...if it is...
    fill(255, 0, 0);                                //...fill with red
  } else {                                            //...otherwise...
    fill(0, 200, 55);                               //...fill with green
  }

  //draw the ball
  ellipse(loc.x, loc.y, sz, sz);

  //bounce the ball
  if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    vel.x *= -1;
  }
  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    vel.y *= -1;
  }

  //draw a small circle to indicate mouse location
  ellipse(mouseX, mouseY, 5, 5);
}

