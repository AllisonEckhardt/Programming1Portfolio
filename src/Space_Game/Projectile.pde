class Projectile {
  //member variables
  int x, y, speed, rad;
  color c;

  // constructor
  Projectile(int x, int y) {
    this.x=x;
    this.y=y;
    speed = 6;
    rad = 3;
    c = #87D337;
  }

  //boolean laserIntersection(Projectile p) {
  //  float distance = dist(x, y, p.x, p.y);
  //  if (distance < rad + p.rad) {
  //    return true;
  //  } else {
  //    return false;
  //  }
  //}
  // member methods
  void fire() {
    y-=speed;
  }

  boolean reachedTop() {
    if (y<-6) {
      return true;
    } else {
      return false;
    }
  }
  void display() {
    fill(c);
    noStroke();
    rectMode(CENTER);
    rect(x, y-5, rad, rad*2);
    
  }
}
