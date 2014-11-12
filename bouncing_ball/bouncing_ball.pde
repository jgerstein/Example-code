//declare (and initialize) variables
float x, y;
float xspeed = random(.5, 2);
float yspeed = random(.5, 2);

void setup() {
  size(500, 500); 
  x = random(width);
  y = random(height);
}

void draw() {
  background(0, 200, 255);
  ellipse(x, y, 20, 20);
  x += xspeed;
  y += yspeed;
  if (x > width) {
    xspeed *= -1;
  }

  if (x < 0) {
    xspeed *= -1;
  }
  if (y > height) {
    yspeed *= -1;
  }
  if (y < 0) {
    yspeed *= -1;
  }
}








