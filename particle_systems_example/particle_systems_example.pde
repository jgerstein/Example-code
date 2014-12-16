//behavior of fireworks
//particles go up and out, then come back down

PVector loc, vel, acc;
float sz;

void setup() {
  noStroke();
  size(800, 600);
  loc = new PVector(width/2, height*.1);
  vel = new PVector(random(-3, 3), random(-4, -2));
  acc = new PVector(0, .1);
  sz = 10;
}

void draw() {
  vel.add(acc);
  loc.add(vel);
  ellipse(loc.x, loc.y, sz, sz);
}

