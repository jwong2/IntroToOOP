class Ball {
 //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;

//this is a constructor. you can have more than one constructor for a given class
  Ball(float tX, float tY) {
    diam = 50;
    loc = new PVector(tX, tY);
    c = color(0, 255, 0);
    vel = PVector.random2D();
    vel.mult(5);
  }

//after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  
  void move() {
    loc.add(vel);
    if(loc.x > width || loc.x < 0) {
      vel.x = -vel.x;
    }
    if(loc.y > height || loc.y < 0) {
      vel.y = -vel.y;
    }
  }
}