int x0 = 20;
int y0 = 50;
int sz0 = 10;
int xspeed0 = 1;
int yspeed0 = -1;
int x1 = 80;
int y1 = 150;
int sz1 = 30;
int xspeed1 = -1;
int yspeed1 = -1;
int x2 = 450;
int y2 = 300;
int sz2 = 35;
int xspeed2 = 2;
int yspeed2 = -1;
int x3 = 320;
int y3 = 450;
int sz3 = 40;
int xspeed3 = 1;
int yspeed3 = 3;
int x4 = 270;
int y4 = 150;
int sz4 = 50;
int xspeed4 = -2;
int yspeed4 = 1;

void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  ellipse(x0, y0, sz0, sz0);
  ellipse(x1, y1, sz1, sz1);
  ellipse(x2, y2, sz2, sz2);
  ellipse(x3, y3, sz3, sz3);
  ellipse(x4, y4, sz4, sz4);

  x0 += xspeed0;
  y0 += yspeed0;
  x1 += xspeed1;
  y1 += yspeed1;
  x2 += xspeed2;
  y2 += yspeed2;
  x3 += xspeed3;
  y3 += yspeed3;
  x4 += xspeed4;
  y4 += yspeed4;

  if (x0 + sz0/2 > width || x0 -sz0/2 < 0) {
    xspeed0 *= -1;
  }
  if (y0 + sz0/2 > height || y0 - sz0/2 < 0) {
    yspeed0 *= -1;
  }

  if (x1 + sz1/2 > width || x1 -sz1/2 < 0) {
    xspeed1 *= -1;
  }
  if (y1 + sz1/2 > height || y1 - sz1/2 < 0) {
    yspeed1 *= -1;
  }
  if (x2 + sz2/2 > width || x2 -sz2/2 < 0) {
    xspeed2 *= -1;
  }
  if (y2 + sz2/2 > height || y2 - sz2/2 < 0) {
    yspeed2 *= -1;
  }
  if (x3 + sz3/2 > width || x3 -sz3/2 < 0) {
    xspeed3 *= -1;
  }
  if (y3 + sz3/2 > height || y3 - sz3/2 < 0) {
    yspeed3 *= -1;
  }
  if (x4 + sz4/2 > width || x4 -sz4/2 < 0) {
    xspeed4 *= -1;
  }
  if (y4 + sz4/2 > height || y4 - sz4/2 < 0) {
    yspeed4 *= -1;
  }
}

