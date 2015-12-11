Ball b1, b2;                //declare a new ball called b

void setup() {
  size(1000 , 800);
  b1 = new Ball(width/2,height/2, 200);      //initialize b as a new object of the Ball class
}

void draw() {
  background(0);
  b1.display();
  b1.move();
}