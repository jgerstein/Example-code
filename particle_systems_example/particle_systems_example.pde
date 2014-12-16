//behavior of fireworks
//particles go up and out, then come back down

Particle[] allMyParticles = new Particle[300];

void setup() {
  noStroke();
  size(800, 600);
  for (int i = 0; i < allMyParticles.length; i++) {
    allMyParticles[i] = new Particle();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < allMyParticles.length; i++) {
    allMyParticles[i].display();
    allMyParticles[i].move();
  }
}

class Particle {
  PVector loc, vel, acc;
  float sz;

  Particle() {
    loc = new PVector(width/2, height*.1);
    vel = new PVector(random(-3, 3), random(-4, -2));
    acc = new PVector(0, .1);
    sz = 10;
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }
}

