import processing.video.*;
Capture video; 

void setup(){
  size(640, 480);
  video = new Capture(this, Capture.list()[0]);
  video.start();

}

void draw(){
  if (video.available()){
    video.read();
  }
  loadPixels();
  video.loadPixels();

  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      int loc = x + y * video.width;
      float r = red  (video.pixels[loc]);
      float g = green(video.pixels[loc]);
      float b = blue (video.pixels[loc]);
      float d = dist(x, y, mouseX, mouseY);
      float adjustbrightness = map(d, 0, 100, 4, 0);
      r *= adjustbrightness;
      g *= adjustbrightness;
      pixels[loc] = color(r, g, b);;
    }
  }

  updatePixels();
}
 
