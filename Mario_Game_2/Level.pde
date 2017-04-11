class Level {
  ArrayList<Block> blocks1 = new ArrayList<Block>();
  ArrayList<Block> blocks2 = new ArrayList<Block>();
  ArrayList<Block> blocks3 = new ArrayList<Block>();
  ArrayList<Block> blocks4 = new ArrayList<Block>();
  ArrayList<Block> blocks5 = new ArrayList<Block>();
  ArrayList<Block> blocks6 = new ArrayList<Block>();
  ArrayList<Block> blocks7 = new ArrayList<Block>();
  Level() {
    int counter = 0;
    for (float i = 0; i < 10; i += 1) {
      blocks1.add(new Block(counter, 20));
      counter++;
    }
    counter = 0;
    for (float i = 0; i < 10; i += 1) {
      blocks2.add(new Block(counter+24, 20));
      counter++;
    }
    counter = 0;
    for (float i = 0; i < 4; i += 1) {
      blocks3.add(new Block(counter, 15));
      counter++;
    }
    counter = 0;
    for (float i = 0; i < 4; i += 1) {
      blocks4.add(new Block(counter+30, 15));
      counter++;
    }
    counter = 0;
    for (float i = 0; i < 18; i += 1) {
      blocks5.add(new Block(counter+8, 14));
      counter++;
    }
    counter = 0;
    for (float i = 0; i < 14; i += 1) {
      blocks6.add(new Block(counter, 9));
      counter++;
    }
    counter = 0;
    for (float i = 0; i < 14; i += 1) {
      blocks7.add(new Block(counter+20, 9));
      counter++;
    }
  }

  void updateLevel() {
    for (int i = 0; i < blocks1.size(); i++) {
      blocks1.get(i).createBlock();
    }
    for (int i = 0; i < blocks2.size(); i++) {
      blocks2.get(i).createBlock();
    }
    for (int i = 0; i < blocks3.size(); i++) {
      blocks3.get(i).createBlock();
    }
    for (int i = 0; i < blocks4.size(); i++) {
      blocks4.get(i).createBlock();
    }
    for (int i = 0; i < blocks5.size(); i++) {
      blocks5.get(i).createBlock();
    }
    for (int i = 0; i < blocks6.size(); i++) {
      blocks6.get(i).createBlock();
    }
    for (int i = 0; i < blocks7.size(); i++) {
      blocks7.get(i).createBlock();
    }
  }
}