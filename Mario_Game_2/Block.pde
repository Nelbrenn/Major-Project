class Block {
  int x, y, blockWidth, blockHeight;
  PImage block;
  Block(int _x, int _y) {
    imageMode(CORNER);
    block = loadImage("block.png");
    blockWidth = 30;
    block.resize(blockWidth, blockWidth);
    x = _x*blockWidth;
    y = _y*blockWidth;
  }
  void createBlock() {
    image(block, x, y);
  }
  boolean hitDetection(){
    return rectRect(marioCharacter.x,marioCharacter.y,marioCharacter.marioWidth,marioCharacter.marioHeight, x,y,blockWidth,blockWidth);
  }
  
  boolean rectRect(float r1x, float r1y, float r1w, float r1h, float r2x, float r2y, float r2w, float r2h) {

    // are the sides of one rectangle touching the other?

    if (r1x + r1w >= r2x &&    // r1 right edge past r2 left
      r1x <= r2x + r2w &&    // r1 left edge past r2 right
      r1y + r1h >= r2y &&    // r1 top edge past r2 bottom
      r1y <= r2y + r2h) {    // r1 bottom edge past r2 top
      return true;
    }
    return false;
  }
}