float locx, locy;        //declare location
float velx, vely;        //declare velocity
float accx, accy;        //declare acceleration

int sz = 50;

void setup() {
  size(800, 600);

  //initialize location variables
  locx = width/2;
  locy = height/2;

  //initialize velocity
  velx = random(-1, 1);
  vely = random(-1, 1);

  //initialize acceleration
  accx = 0;
  accy = 0;
}

void draw() {
  //add acceleration to velocity
  velx += accx;
  vely += accy;

  //add velocity to location
  locx += velx;
  locy += vely;

  //draw a circle
  ellipse(locx, locy, sz, sz);

  if (locx - sz/2 > width) {      //if circle goes off of right edge...
    locx = -sz/2;                 //...wrap around to left edge
  }

  if (locx + sz/2 < 0) {          //if circle goes off of left edge....
    locx = width + sz/2;          //...wrap around to right edge
  }

  if (locy - sz/2 > height) {     //if circle goes beyond bottom...
    locy = -sz/2;                 //...wrap around to top
  }

  if (locy + sz/2 < 0) {          //if circle goes beyond top...
    locy = height + sz/2;         //...wrap around to bottom
  }
}

