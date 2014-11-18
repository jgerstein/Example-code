PVector loc, vel, acc;      //declare loc, vel, and acc
int sz = 50;

void setup() {
  colorMode(HSB,360,100,100,100);
  size(800, 600);
  loc = new PVector(width/2, height/2);      //initialize location
  vel = PVector.random2D();                  //initialize velocity
  acc = new PVector();                       //initialize acceleration
  noStroke();
}

void draw() {
  fill(frameCount%360,100,100);      //change fill color
  vel.set(mouseX,mouseY);            //set velocity using mouseX and mouseY
  vel.normalize();                   //normalize velocity to make its magnitude 1
  vel.add(acc);                      //add acceleration to velocity
  loc.add(vel);                      //add velocity to location
  ellipse(loc.x, loc.y, sz, sz);     //draw an ellipse

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

