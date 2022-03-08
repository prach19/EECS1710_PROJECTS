class Scrollbar {
  float xpos, ypos;       // x and y position of bar
  float sposMin, sposMax; // max and min values of slider
  int loose;              // how loose/heavy
  boolean over;           // is the mouse over the slider?
  boolean locked;
  float ratio;

  Scrollbar (float xp, float yp, int sw, int sh, int l) {
    swidth = sw;
    sheight = sh;
    int widthtoheight = sw - sh;
    ratio = (float)sw / (float)widthtoheight;
    xpos = xp;
    ypos = yp-sheight/2;
    spos = xpos + swidth/2 - sheight/2;
    newspos = spos;
    sposMin = xpos;
    sposMax = xpos + swidth - sheight +25;
    loose = l;
  }

  void update() {
    
    if (overEvent()) {over = true;} 
    else { over = false;}
    
    if (mousePressed && over) {locked = true;}
    
    if (!mousePressed) {locked = false;}
    
    if (locked) {newspos = constrain(mouseX-sheight/2, sposMin, sposMax);}
    
    if (abs(newspos - spos) > 1) {spos = spos + (newspos-spos)/loose;}
    
  }


  float constrain(float val, float minv, float maxv) {
    return min(max(val, minv), maxv);
  }

  boolean overEvent() {
    if (mouseX > xpos && mouseX < xpos+swidth && mouseY > ypos && mouseY < ypos+sheight) {return true;} 
    else {return false;}
  }

  void display() {
    noStroke();
    fill(183, 70, 187);
    rect(xpos, ypos, swidth, sheight);
    if (over || locked) {fill(102, 102, 102);} 
    else {fill(0);}
    rect(spos, ypos, sheight/2, sheight);
  }

  float getPos() {
    return spos * ratio;
  }
}


// help taken from -> https://processing.org/examples/scrollbar.html 
