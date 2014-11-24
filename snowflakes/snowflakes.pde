//declare variables
PVector loc, vel, acc;
int sz;

void setup() {
  size(800, 600);
  //initialize variables
  sz = 5;
  loc = new PVector(random(width),-sz/2);
  vel = new PVector(0, 1);
  acc = new PVector(0, .01);
  noStroke();
  fill(255, 200);
}

void draw() {
  background(0, 20, 50);
  //move snowflake
  vel.add(acc);
  loc.add(vel);
  vel.limit(3);
  //draw snowflake
  ellipse(loc.x, loc.y, sz, sz);
  //change horizontal acceleration
  acc.x = random(-.1, .1);
  //restart snowflake
  if (loc.y - sz/2 > height) {
    loc.set(random(width),-sz/2);
    vel.set(0,1);
  }
}

