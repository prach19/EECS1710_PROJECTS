
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer happy, munch, sip, snore, toaster;

PImage bg, left, right, normal, sleep, food, face;
PVector waterBowl = new PVector (100, 625);
PVector foodBowl = new PVector (860, 600);
float x= 500;
float y = 400;
int diameter = 50;
int diameterTwo = diameter + 100;


void setup(){
  size(1000,700);
  bg = loadImage ("background.jpg");
  
 //loading images
  imageMode (CENTER);
   normal = loadImage("normal.png");
   normal.resize(normal.width/2, normal.height/2);
   left = loadImage("left.png");
   left.resize(left.width/2, left.height/2);
   right = loadImage("right.png");
   right.resize(right.width/2, right.height/2);
   sleep = loadImage("sleep.png");
   sleep.resize(sleep.width/2, sleep.height/2);
   food = loadImage("food.png");
   food.resize(food.width/2, food.height/2);
    face = normal;
 
 //loading sounds
  minim = new Minim(this);
   happy = minim.loadFile("happy.mp3");
   munch = minim.loadFile("munch.mp3");
   snore = minim.loadFile("snore.mp3");
   toaster = minim.loadFile("toaster.mp3");
   sip = minim.loadFile("sip.mp3");


}

void draw(){
  background(bg);
  image(face, x, y);
  textSize(20);
  fill(255);
  text ("sleep", 100, 50);
  text ("awake/reset", 100, 150);
  text ("toast", 900, 150);
  textSize(50);
  text ("teal", 450, 50);
  
  //water and food interactions -> when clicked the creature will move 50px towards the object while looking at it
    if (mouseX>waterBowl.x-200 && mouseY>waterBowl.y-200 && mouseX<waterBowl.x+200 && mouseY<waterBowl.y+200 && mousePressed == true){
      face = left;
      if(x > 100 || x < 900){x-=50;}
      sip.play();
      sip.rewind();
    }
    else if (mouseX>foodBowl.x-200 && mouseY>foodBowl.y-200 && mouseX<foodBowl.x+200 && mouseY<foodBowl.y+200 && mousePressed == true){
      face = right;
      if(x > 100 || x < 900){x+=50;}
      munch.play();
      munch.rewind();
  }
 
 
 
 //sleep button -> makes the creature sleep
 if (mouseX>diameter-25 && mouseY>diameter-25 && mouseX<diameter+25 && mouseY<diameter+25 && mousePressed == true){
     face = sleep;
     x = 500;
     snore.play();
     snore.rewind();
 }
 else if (mouseX>diameter-25 && mouseY>diameter-25 && mouseX<diameter+25 && mouseY<diameter+25){
     fill(197, 143, 224);
     ellipse(diameter, diameter, diameter, diameter);
 }
 else {
     fill (240, 211, 255);
     ellipse (diameter, diameter, diameter, diameter);
 }
 
 
 
 //awake button - wakes the creature up and brings to original position
 if (mouseX>diameter-25 && mouseY>diameterTwo-25 && mouseX<diameter+25 && mouseY<diameterTwo+25 && mousePressed == true){
     face = normal;
     x = 500;
     snore.pause();
     happy.play();
     happy.rewind();
 }
 else if (mouseX>diameter-25 && mouseY>diameterTwo-25 && mouseX<diameter+25 && mouseY<diameterTwo+25){
     fill(197, 143, 224);
     ellipse(diameter, diameterTwo, diameter, diameter);
 }
 else {
     fill (240, 211, 255);
     ellipse (diameter, diameterTwo, diameter, diameter);
 }
 
 
 
 //toast button -> makes the creature give you toast
 if (mouseX>900 && mouseY>75 && mouseX<950 && mouseY<125 && mousePressed == true){
    face = food;
    x = 500;
     toaster.play();
     toaster.rewind();
}
else if (mouseX>900 && mouseY>75 && mouseX<950 && mouseY<125){
    fill(197, 143, 224);
    ellipse(925, 100, diameter, diameter);
}
else {
    fill (240, 211, 255);
    ellipse (925, 100, diameter, diameter);
}
 
 
}

/*
videos, resources used:

https://freesound.org/people/DavidRusting/sounds/252287/ -> happy sound
https://freesound.org/people/Daronoxus/sounds/393633/ -> toaster sound
https://freesound.org/people/HerraBilbo/sounds/360685/ -> munch sound
https://freesound.org/people/Topschool/sounds/361075/ -> sip sound
https://freesound.org/people/hmsschoolwork2/sounds/376316/ -> snore sound

*/
