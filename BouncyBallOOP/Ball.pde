class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;
float speed;
  //this is a constructor. you can have more than one constructor for a given class
  Ball(float tspeed) {
    diam = 200;
    speed=tspeed;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    vel.mult(speed);
    c = color(random(255), random(50), random(100, 255));
    speed =1;
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }


  void move() {
    loc.add(vel); //gives it velocity
  }
  void bounce() { //makes it bounce
    if (vel.x + diam/2 >= width ) {
      vel.x = -abs(vel.x);
    } else if (vel.x - diam/2 <= 0) {
      vel.x = abs(vel.x);
    }
    if (vel.y + diam/2 >= height) {
      vel.y = -abs(vel.y);
    } else if (vel.y - diam/2 <= 0) {
      vel.y = abs(vel.y);
    }
  }
}