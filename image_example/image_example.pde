//declare an image
PImage bruceWayne;

void setup() {
  size(800, 600);
  //initialize image
  bruceWayne = loadImage("batman.gif");
  
}

void draw() {
  background(255);
  //display image. parameters 4 and 5 are optional - they set the size at which the image is displayed
  image(bruceWayne, mouseX, mouseY, bruceWayne.width*.2, bruceWayne.height*.2);
}

