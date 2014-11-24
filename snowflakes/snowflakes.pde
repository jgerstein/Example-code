PVector loc, vel, acc;
int sz;

void setup() {
  size(800, 600);
  sz = 5;
  loc = new PVector(width/2, 0);
  vel = new PVector(0, 1);
  acc = new PVector(0, .01);
  noStroke();
  fill(255, 200);
}

void draw() {
  background(0, 20, 50);
  vel.add(acc);
  loc.add(vel);
  ellipse(loc.x, loc.y, sz, sz);
  acc.x = random(-.1,.1);
}

