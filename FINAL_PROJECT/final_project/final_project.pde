/*
  to use this synthesizer, adjust the volume, pan, rate/speed that you want and *then* click a track button to hear the effect
  use the stop all button to stop playing sounds
  note: this program takes a few seconds to load
*/

import processing.sound.*;
import controlP5.*; //library used to create the knobs/dials

ControlP5 cp5;
Words words;
Knob rate, panning; // names of the knobs
Scrollbar hs1; // new scrollbar object
Buttons b; // buttons
int swidth, sheight;// width and height of bar
float spos, newspos;// x position of slider
float amplitude, speed, panz, s, p; // variables for the speed, volume, pan of the sound
SoundFile drums, beat, heavy, livewire, techni, moon; // track names

void setup() {
  size(1000,700, P2D);
  smooth();
  
  cp5 = new ControlP5(this);
  words =  new Words();
  
  drums = new SoundFile(this, "landslide_drums.mp3"); //https://www.youtube.com/watch?v=PiGt9C76U0s
  beat = new SoundFile(this, "landslide_other.mp3"); //https://www.youtube.com/watch?v=PiGt9C76U0s
  heavy = new SoundFile(this, "heavy.mp3"); //https://www.youtube.com/watch?v=g8RmfDg45SE
  livewire = new SoundFile(this, "livewire.mp3"); //https://www.youtube.com/watch?v=Fzefj2lkLlE
  techni = new SoundFile(this, "techni.mp3"); //https://www.youtube.com/watch?v=8FoOMvLQg4U
  moon = new SoundFile(this, "moon.mp3");//https://www.youtube.com/watch?v=vq0eO8eKby8
  b = new Buttons();
  
  rate = cp5.addKnob("rate")
               .setRange(0.25,2.5)
               .setValue(1.0)
               .setPosition(475,50)
               .setRadius(50)
               .setNumberOfTickMarks(9)
               .setTickMarkLength(4)
               .snapToTickMarks(true)
               .setColorForeground(color(255))//white
               .setColorBackground(color(197, 216, 109))//green
               .setColorActive(color(70,77,119))//navy
               .setDragDirection(Knob.HORIZONTAL)
               ;
                     
  panning = cp5.addKnob("pan")
               .setRange(-1.0,1.0)
               .setValue(0.0)
               .setPosition(600,50)
               .setRadius(50)
               .setNumberOfTickMarks(8)
               .setTickMarkLength(4)
               .snapToTickMarks(true)
               .setColorForeground(color(255))
               .setColorBackground(color(197, 216, 109))
               .setColorActive(color(270,77,119))
               .setDragDirection(Knob.HORIZONTAL)
               ;
               
     hs1 = new Scrollbar(10, 100, 400, 50, 5); 
    
     words.setup();
     
     frameRate(30);

}

void draw() {
  
  background(73, 183, 205);
  hs1.update();
  hs1.display();
  amplitude = map(newspos, 0, swidth, 0.2, 1.0);
  println("this is amp" +amplitude);
  rate(speed);
  println("this is the speed" +speed);
  pan(panz);
  println("this is the pan" +panz);
  b.track1();
  b.track2();
  b.track3();
  b.track4();
  b.track5();
  b.track6();
  b.stopAll();
  words.titles();
  
}


void rate(float s) {
  color(s);
  speed = s;
}

void pan(float p) {
  panz = p;
}

void keyPressed() {
  switch(key) {
    case('1'):rate.setValue(180);break;
    case('2'):panning.setConstrained(false).hideTickMarks().snapToTickMarks(false);break;
    case('3'):rate.shuffle();panning.shuffle();break;
  }
  
}

//test
