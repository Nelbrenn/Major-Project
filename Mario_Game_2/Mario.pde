class Mario {
  //data
  PImage marioJump;
  PImage marioWalk;
  int x;
  int y;
  float speed;
  float gravity;
  float velocityY;
  int radius;
  boolean moving;
  boolean left;
  boolean walk, standing;
  //float yAcceleration;
  int marioWidth, marioHeight;
  int jump;
  Level level;
  //constructor
  Mario(Level _level) {
    level = _level;
    imageMode(CORNER);
    marioJump = loadImage("Mario Jump.png");
    marioWalk = loadImage("Mario walking.png");
    walk = true;
    moving = true;
    gravity = 0.5;
    marioWidth = 30;
    marioHeight = 30;
    x = width/2;
    y = height-marioHeight;
    speed = 5;
    velocityY = 0;
    jump = 15;
    marioWalk.resize(marioWidth, marioHeight);
    marioJump.resize(marioWidth, marioHeight);
  }

  void marioDisplay() {
    if (walk) {
      image(marioWalk, x, y);
    } else {
      image(marioJump, x, y);
    }
    jumpCheck();
  }

  void jumpCheck() {
    if (y == height-marioHeight) {
      walk = true;
    } else {
      walk = false;
    }
    velocityY += gravity;
    y += velocityY;

    if (collision()) {
      y -= velocityY;
      velocityY = 0;
      for (int i = 0; i < level.blocks1.size(); i++) {
        if (level.blocks1.get(i).hitDetection()) {
          y = level.blocks1.get(i).y - marioHeight;
          break;
        }
      }
      for (int i = 0; i < level.blocks2.size(); i++) {
        if (level.blocks2.get(i).hitDetection()) {
          y = level.blocks2.get(i).y - marioHeight;
          break;
        }
      }
      for (int i = 0; i < level.blocks3.size(); i++) {
        if (level.blocks3.get(i).hitDetection()) {
          y = level.blocks3.get(i).y - marioHeight;
          break;
        }
      }
      for (int i = 0; i < level.blocks4.size(); i++) {
        if (level.blocks4.get(i).hitDetection()) {
          y = level.blocks4.get(i).y - marioHeight;
          break;
        }
      }
      for (int i = 0; i < level.blocks5.size(); i++) {
        if (level.blocks5.get(i).hitDetection()) {
          y = level.blocks5.get(i).y - marioHeight;
          break;
        }
      }
      for (int i = 0; i < level.blocks6.size(); i++) {
        if (level.blocks5.get(i).hitDetection()) {
          y = level.blocks5.get(i).y - marioHeight;
          break;
        }
      }
      for (int i = 0; i < level.blocks7.size(); i++) {
        if (level.blocks5.get(i).hitDetection()) {
          y = level.blocks5.get(i).y - marioHeight;
          break;
        }
      }
    }


    y = constrain(y, marioHeight, height-marioHeight);  //stay on screen
    //velocityY = constrain(velocityY, -jump, jump);
    if (y == height-marioHeight) {
      velocityY = 0;
    }
  }

  void jump() {
    velocityY = -jump;
  }

  void marioWalk() {
    if (velocityY == 15) {
      standing = true;
    } else {
      standing = false;
    }
    //y = constrain(y, -marioHeight, height-marioHeight); 
    x = constrain(x, 0, width-marioHeight); 
    if (keyPressed) {
      if (key == 'd') {
        x+=speed;
        if (collision()) {
          x-=speed;
        }
        left = false;
      }
      if (key == 'a') { 
        x-=speed;
        if (collision()) {
          x+=speed;
        }
        left = true;
      }
    }
  }

  void keyTyped() {
    y += 1;
    if (key == 'w' && (collision()|| y == height-marioWidth+1)) {
      jump();
    }
    y -= 1;
  }

  boolean collision() {
    for (int i = 0; i < level.blocks1.size(); i++) {
      if (level.blocks1.get(i).hitDetection()) { 
        return true;
      }
    }
    for (int i = 0; i < level.blocks2.size(); i++) {
      if (level.blocks2.get(i).hitDetection()) { 
        return true;
      }
    }
    for (int i = 0; i < level.blocks3.size(); i++) {
      if (level.blocks3.get(i).hitDetection()) { 
        return true;
      }
    }
    for (int i = 0; i < level.blocks4.size(); i++) {
      if (level.blocks4.get(i).hitDetection()) { 
        return true;
      }
    }
    for (int i = 0; i < level.blocks5.size(); i++) {
      if (level.blocks5.get(i).hitDetection()) { 
        return true;
      }
    }
    for (int i = 0; i < level.blocks6.size(); i++) {
      if (level.blocks6.get(i).hitDetection()) { 
        return true;
      }
    }
    for (int i = 0; i < level.blocks7.size(); i++) {
      if (level.blocks7.get(i).hitDetection()) { 
        return true;
      }
    }
    return false;
  }
}
//