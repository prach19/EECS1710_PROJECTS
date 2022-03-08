class Words{
  int yline2 = 670; 
  int yline1 = 420; 
  int xrow1 = 150; 
  int xrow2 = 500;
  int xrow3 = 850;
  PFont myFont;
  
  void setup(){
    myFont= createFont("Georgia", 32);
    textFont(myFont);
    fill(0);
    textAlign(CENTER);
  }
  
  void titles(){
    
    textSize(28);
    text("volume", 200, 50); 
    
    textSize(18);
    text("track 1", xrow1, yline1); 
    text("track 2", xrow2, yline1);
    text("track 3", xrow3, yline1);
    text("track 4", xrow1, yline2); 
    text("track 5", xrow2, yline2);
    text("track 6", xrow3, yline2);
    text("stop all", xrow3, 25); 
  
  }
  
}
