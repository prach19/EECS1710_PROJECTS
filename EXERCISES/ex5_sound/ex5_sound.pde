import processing.sound.*;
Amplitude ampl;
AudioIn voice;
float vol;


void setup(){
  size(1000, 700);
  Sound s = new Sound(this);
  //Sound.list();
  s.inputDevice(4);
  ampl = new Amplitude(this);
  voice = new AudioIn(this, 4);
  voice.start();
  ampl.input(voice);
  
}
void draw(){
  background(100, 100, 200);
  vol = ampl.analyze();
  
  println(vol);
  
  if (vol>0.5){
    fill(200, 100, 200);
    ellipse(500, 350, 300, 300);
  }
  
  if (vol<0.5){
    fill(500, 100, 200);
    ellipse(500, 350, 300, 300);
  }

}

void stop(){
  voice.stop();

}
