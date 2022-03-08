class ToFind{
  //using StringList to create a list of objects to find
  StringList toFind;
  int index;
  
  void allItems(){
    toFind = new StringList();
    toFind.set(0,"sunscreen");
    toFind.set(1,"yoyo");
    toFind.set(2,"lipstick");
    toFind.set(3,"light bulb");
    toFind.set(4,"airplane");
    toFind.set(5,"camera");
    toFind.set(6,"candle");
    toFind.set(7,"egg");
    toFind.set(8,"map");
    toFind.set(9,"suitcase");
  }
  
  void printedList(){
    words.setup();
    fill(255);
    textFont(des);
    textSize(24);
    text(toFind.get(0), barWidth, textLine*4);
    text(toFind.get(1), barWidth, textLine*5);
    text(toFind.get(2), barWidth, textLine*6);
    text(toFind.get(3), barWidth, textLine*7);
    text(toFind.get(4), barWidth, textLine*8);
    text(toFind.get(5), barWidth, textLine*9);
    text(toFind.get(6), barWidth, textLine*10);
    text(toFind.get(7), barWidth, textLine*11);
    text(toFind.get(8), barWidth, textLine*12);
    text(toFind.get(9), barWidth, textLine*13);
  }




}
