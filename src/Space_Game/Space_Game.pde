// SpaceGame | Dec 2020
// By: Allison Eckhardt
// TODO: Project Setup

import processing.sound.*;
SoundFile projectile;
SpaceShip s1;
ArrayList<Projectile> projectiles;
ArrayList<Asteroid> asteroids;
ArrayList<Star> stars;
Timer timer;
int pass, score;
boolean play;

void setup() {
  size(500, 500);
  projectile = new SoundFile(this, "TIE-Fire.wav");
  s1 = new SpaceShip(#68E569);
  projectiles = new ArrayList();
  asteroids = new ArrayList();
  stars = new ArrayList();
  pass = 0;
  timer = new Timer(2000);
  timer.start();
  score = 0;
  play = false;
}

void draw() {
  noCursor();
  if (!play) {
    startScreen();
  } else {
    background(11);
    background(0);

    stars.add(new Star(int(random(width)), int(random(height))));

    for (int i = 0; i < stars.size(); i++) {
      Star star = stars.get(i);
      star.display();
      star.move();
      if (star.reachedBottom()) {
        stars.remove(star);
      }
    }

    if (timer.isFinished()) {
      asteroids.add(new Asteroid(int(random(width)), -50));
      timer.start();
    }
    for (int i = 0; i < asteroids.size(); i++) {
      Asteroid asteroid = asteroids.get(i);
      asteroid.display();
      asteroid.move();
      // Rock vs Ship Collision
      if (s1.asteroidIntersection(asteroid)) {
        score+=asteroid.health;
        s1.health-=asteroid.health;
        asteroids.remove(asteroid);
      }
      if (asteroid.reachedBottom()) {
        pass++;
        asteroids.remove(asteroid);
      }
    }

    for (int i = 0; i < projectiles.size(); i++) {
      Projectile projectile = projectiles.get(i);
      projectile.display();
      projectile.fire();
      // Projectile vs asteroid Intersection
      for (int j = 0; j < asteroids.size(); j++) {
        Asteroid asteroid = asteroids.get(j);
        if (asteroid.projectileIntersection(projectile)) {
          projectiles.remove(projectile);
          asteroid.health-=10;
          if (asteroid.health<1) {
            asteroids.remove(asteroid);
            score+=asteroid.health2;
          }
        }
      }
      if (projectile.reachedTop()) {
        projectiles.remove(projectile);
      }
    }
    s1.display(mouseX, mouseY);
    infoPanel();

    infoPanel();

    if (s1.health<1 || pass>100) {
      play = false;
      gameOver();
    }

    s1.display(mouseX, mouseY);
  }
}
void mousePressed() {
  projectile.play();
  if (s1.ammo >0) {
    projectiles.add(new Projectile(s1.x-35, s1.y));
    projectiles.add(new Projectile(s1.x+35, s1.y));
    s1.ammo-=2;
  }
}

void startScreen() {
  background(0);
  textAlign(CENTER);
  text("Space Game", width/2, height/2);
  text("By Allison Eckhardt, Finished Jan 2021", width/2, height/2+20);
  text("Click anywhere on the screen to continue!", width/2, height/2+40);

  if (mousePressed) {
    play = true;
  }
}

void infoPanel() {
  fill(128, 128);
  rectMode(CORNER);
  rect(0, height-50, width, 50);
  fill(255, 128);
  text("Health:" +s1.health, 50, height-20);
  text("Ammo:" +s1.ammo, 150, height-20);
  text("Score:" +score, 245, height-20);
  if (pass >7){
  fill(255,0,0);
  }
  text("Pass: " + pass, 320, height-20);
}
void gameOver() {
  background(0);
  textAlign(CENTER);
  fill(220);
  text("Game Over!", width/2, height/2);
  text("Final Score:" + score, width/2, height/2+20);
  text("Asteroids Missed:" + pass, width/2, height/2+40);
  noLoop();
}
