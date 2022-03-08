class Light{
// creating the flashlight effect
 PImage stuff;
 float maxdist = 30;

void draw(){
stuff = loadImage("stuffs.png");
  loadPixels();
  stuff.loadPixels();
  for(int x=0; x<605 ; x++){
    for(int y=0; y<699; y++){
      int locus = x+y*605;
      float r = red(stuff.pixels[locus]);
      float b = blue(stuff.pixels[locus]);
      float g = green(stuff.pixels[locus]);
      float d = dist(x, y, mouseX, mouseY);
      float adjust = 200*(maxdist-d)/maxdist;
      r += adjust;
      g += adjust;
      b += adjust;
      color c = color(r, g, b);
      pixels[y*width + x] = c;
    }
  }
  updatePixels();
}
  
}
