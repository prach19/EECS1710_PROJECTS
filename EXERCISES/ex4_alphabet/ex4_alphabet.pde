PFont fonts;



void setup() {
  size(1000, 700);
  fonts = createFont("Wingdings2", 24);
  textFont(fonts);
  textAlign(CENTER, CENTER);
} 

void draw() {
  background(0);
  int c= 35;
  int g= 46;
  translate(40, 40);

  for (int y = 0; y < height-g; y += g) {
    for (int x = 0; x < width-g; x += g) {
      char l = char(c);
      if (l == 'A' || l == 'E' || l == 'I' || l == 'O' || l == 'U') {fill(255, 0, 0);} 
      else {fill(255);}
      text(l, x, y);
      c++;
    }
  }
}
