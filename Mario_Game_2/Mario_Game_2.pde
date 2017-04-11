//initialize the classes
Mario marioCharacter;
Level level1;

void setup(){
 background(0,0,255);
 size(1020,720);
 level1 = new Level();
 marioCharacter = new Mario(level1);
}

void draw(){
  background(0);
  marioCharacter.marioWalk();
  marioCharacter.marioDisplay();
  level1.updateLevel();
  
}

void keyTyped() {
  marioCharacter.keyTyped();
}