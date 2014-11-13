float x, y, velX, velY;
int sz = 50;
void setup() {
  size(800, 600);
  x = width/2;
  y = height*.25;
  velX = 0;
  velY = 1;
}

void draw() {
  background(0);
  ellipse(x, y, sz, sz);
  x += velX;
  y += velY;
  if (y + sz/2 > height) {
    velY = -abs(velY);
  }
}

