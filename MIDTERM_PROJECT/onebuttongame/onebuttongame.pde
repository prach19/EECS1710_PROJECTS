import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer bgm, lost;
PFont font; //times new roman from the Processing tools
PImage lock, unlock, lose; //various images used, all created by me using krita
float endX, endY, distance, l;
int newRandomPos, elapsed, start, timer;

int posX[] ={120, 480, 300, 200, 380, 165, 440};
int posY[] = {450, 450, 625, 300, 290, 570, 560};
int randomPos = (int)random(posX.length);
PVector c = new PVector(posX[randomPos],posY[randomPos]); // deciding the position of the combination dots
int comboDiameter = 50; // diameter of combination dots 
// variables required to control the red line:
float lineRotate = 0.0;
int lockRadius = 225;
float lockLine = 0.80*lockRadius;
int middleX = 300;
int middleY = 450;
float speed = 0.25;


void setup(){
  size(1000,700, P2D);
  frameRate(30);
  lock = loadImage("lock.png");
  unlock = loadImage ("unlock.png");
  lose = loadImage ("lose.png");
  font = loadFont("font.vlw");
  minim = new Minim(this);
  bgm = minim.loadFile("bgm.mp3");// background music from https://freesound.org/s/265549/
  lost = minim.loadFile("lose.mp3");// the lose sound is the same as above but edited slightly by me using Audacity
  bgm.loop();
  start = millis(); //recording the start time
}


void draw(){
  background(0);
  imageMode(CENTER);
  image(lock, 300, 350);
  words(); // the text displayed
  
//timer
  elapsed = millis() - start;
  timer = (62000 - elapsed)/1000; // 62s is used in order to give the program 1s to load up completely
  textSize(60);
  text("" + (timer), 725, 500);
    
//settings for drawing the combo dots
  noStroke();
  strokeWeight(1);
  fill(225, 167, 58);
  ellipse(c.x,c.y, comboDiameter, comboDiameter);
  
//creating the rotating red line + https://processing.org/examples/clock.html was used to understand the math
  lineRotate +=speed;
  l = map (lineRotate, 0, 80, 0, TWO_PI) - HALF_PI;
  endX = middleX+cos(l)*lockLine;
  endY = middleY+sin(l)*lockLine ;
  stroke(229, 54, 100);
  strokeWeight(20);
  line(middleX, middleY, endX, endY);
 
  distance = dist(c.x,c.y,endX,endY); // measuring the distance between the centre of the combo dot and the end of the line
 
// conditions and actions for winning
  if ((distance < comboDiameter) && keyPressed && key == ' ' ) {
  delay(75);
  newRandomPos =(int)random(posX.length);
  c.x = posX[newRandomPos];
  c.y = posY[newRandomPos];
  speed += 0.25; // increasing the speed as the player wins
 }

//winner screen
  if (speed == 2.50){
    noLoop();
    image (unlock, 500, 350);
  }

//conditions and actions for losing
  if (((distance > comboDiameter) && keyPressed && key == ' ' ) || timer == 0) {
  bgm.pause();
  bgm.rewind();
  lost.play();
  noLoop(); // stopping the draw() in order to display the game over screen
  image(lose, 500, 350);
   }
}
  
// allowing the player to restart/replay
void mousePressed(){
  bgm.play();
  lost.pause();
  lost.rewind();
  loop();
  speed = 0.25;
  start = millis(); 
}


// all text displayed in the sketch window
void words(){
  textFont(font);
  textAlign(CENTER);
  textSize(60);
  text("POP THE LOCK", 700, 100);
  text("TIMER:", 725, 440);
  textSize(20);
  text("hit the space bar when the red line and the yellow circle intersect", 720, 150);
  text("to pop the combination", 720, 180);
  text("when popped, the red line will move faster!", 720, 240);
  text("fail to pop the combination and you lose :(", 720, 300);
  text("note: \ndue to the nature of the random() function, \nthe combinations may not appear in new places each time", 400, 600, 600, 800);
}
