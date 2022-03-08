color bg = color(0, 175, 185);

void setup(){
  size(700, 700);
  background(bg);
}


void draw(){
  fill(126, 116, 219);
  rectMode(CENTER);
  rect(350, 175, 300, 300, 70);
  rect(350, 475, 300, 300, 70);
  
  textSize(100);
  textAlign(CENTER);
  fill (0);
  text(hour(), 350, 225);
  text(minute(), 350, 500);
  
  textSize(50);
  text(second(), 350, 600);
  
  
}
