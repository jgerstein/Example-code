float x, y, velX, velY, gravity;
int sz = 50;
void setup() {
  size(800, 600);
  x = width/2;
  y = height*.1;
  velX = 3;        //assign value for horizontal velocity
  velY = 0;        //assign value for vertical velocity
  gravity = .1;     //assign value for gravity (vertical acceleration)
  textSize(30);
  //  noLoop();
}

void draw() {
  background(0);
  text("Location: " + y + "    Velocity: " + velY + "    Acceleration: " + gravity, 5, 30);
  ellipse(x, y, sz, sz);      //draw an ellipse
  velY += gravity;            //add vertical acceleration (gravity) to vertical velocity
  x += velX;                  //add horizontal velocity to horizontal position
  y += velY;                  //add vertical velocity to vertical position


  if (y + sz/2 > height) {    //if ball hits bottom...
    y = height - sz/2;
    velX *= .9;         //...friction decreases the magnitude of horizontal velocity
    velY *= -.7;        //...reverse vertical velocity
  }
  if (x + sz/2 > width || x - sz/2 < 0) {
    velX *=-1;
  }
}

//void mousePressed() {
//  redraw();
//}

