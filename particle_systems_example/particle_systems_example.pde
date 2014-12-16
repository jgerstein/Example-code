//behavior of fireworks
//particles go up and out, then come back down

ArrayList<Particle> allMyParticles = new ArrayList<Particle>();

void setup() {
  noStroke();
  size(800, 600);
 
}

void draw() {
  if(mousePressed){
   allMyParticles.add(new Particle()); 
  }
  background(0);
  for (int i = 0; i < allMyParticles.size(); i++) {
    Particle currentParticle = allMyParticles.get(i);
    currentParticle.display();
    currentParticle.move();
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

