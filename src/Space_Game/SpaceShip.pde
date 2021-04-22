class SpaceShip {
  // member variables
  int x, y, health, ammo, rad;
  char displayMode;
  color c1;

  // constructor
  SpaceShip(color c1) {
    x = 0;
    y = 0;
    health = 1000;
    ammo = 10000;
    displayMode = '1';
    this.c1 = c1;
    rad = 25;
    }
  
  //Rock vs Ship Collision
  boolean asteroidIntersection(Asteroid asteroid){
    float distance = dist(x,y,asteroid.x,asteroid.y);
    if(distance < rad + asteroid.rad) {
      return true;
    } else {
      return false;
    }
  }
  
  //member methods
  void display(int x, int y) {
    this.x=x;
    this.y=y;
    if(displayMode == '1') {
    rectMode(CENTER);
    stroke(150);
    strokeWeight(2);
    fill(c1);
    rect(x+18, y+10, 8, 8);
    rect(x-18, y+10, 8, 8);
    line(x+35, y+10, x+35, y);
    line(x-35, y+10, x-35, y);
    fill(128);
    triangle(x, y-20, x+40, y+10, x-40, y+10);
    triangle(x, y+30, x-20, y+45, x+20, y+45);
    fill(200);
    ellipse(x, y+5, 20, 70);
    fill(128);
    triangle(x, y+10, x-3, y+1, x+3, y+1);
    fill(250);
    }
  }
}
