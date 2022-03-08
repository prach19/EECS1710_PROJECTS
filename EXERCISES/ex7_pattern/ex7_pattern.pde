PShader blur;
PImage img;

void setup() {
  size(1000, 700, P2D);
  img =  loadImage("stuffs.png");
  blur = loadShader("blur.glsl"); 
  stroke(0, 102, 153);
  rectMode(CENTER);
}

void draw() {
  filter(blur);  
  rect(mouseX-75, mouseY, 150, 150); 
  ellipse(mouseX+75, mouseY, 150, 150);
}
