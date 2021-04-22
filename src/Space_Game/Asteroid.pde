class Asteroid {
  //member variables
  int x, y, dia, health, health2, speed, rad;
  char displayMode;
  color c;
  PImage asteroid;


  // constructor
  Asteroid(int x, int y) {
    this.x = x;
    this.y = y;
    dia = 50;
    health = 50;
    health2= 20;
    speed = int(random(2, 3));
    displayMode = '1';
    c = #AF9B7E;
    rad= 25;
  }

  //Laser vs Rock Intersection
  boolean projectileIntersection(Projectile p) {
    float distance = dist(x, y, p.x, p.y);
    if (distance < rad + p.rad) {
      return true;
    } else {
      return false;
    }
  }

  boolean reachedBottom() {
    if (y>height) {
      return true;
    } else {
      return false;
    }
  }

  void move() {
    y+=speed;
  }

  // member methods
  void display() {
    fill(c);
    ellipseMode(CENTER);
    ellipse(x, y, dia, dia);
    fill(0);
    //text(health,x,y);
  }
}
