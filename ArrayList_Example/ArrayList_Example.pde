//ArrayList vs Array
//Array has a set size, ArrayList does not have a set size
//Array is simple to set up, but difficult to add/remove
//ArrayList is designed for frequent additions and removals
//Arrays specify which type of data they store, but we have to do that ourselves for an ArrayList
//both have an index starting at 0
//length of an array is arrayName.length
//size of an ArrayList is arrayListName.size()

//declare and initialize the ArrayList
ArrayList<BouncyBall> balls = new ArrayList<BouncyBall>();

void setup() {
  size(800, 600);
  background(0);
  //add a new BouncyBall to the ArrayList using the .add() method
  balls.add(new BouncyBall(random(5, 80)));
}

void draw() {
  background(0);
  //use a for loop to go through all possible values for the index
  for (int i = 0; i < balls.size (); i++) {
    BouncyBall b = balls.get(i);    //declare a placeholder BouncyBall and assign it the BouncyBall that we get at the specified index
    //do whatever I want with BouncyBall b
    b.display();
    b.move();
    b.wallBounce();
  }
}

void mousePressed() {
  //each time the mouse is pressed, add a new BouncyBall to the ArrayList using the .add() method
  balls.add(new BouncyBall(random(5, 80)));
}

