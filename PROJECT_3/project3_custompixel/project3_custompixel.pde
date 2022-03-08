import ddf.minim.*;

Minim minim;
AudioPlayer bgm, correct; 
Light light = new Light(); // creating the flashlight effect with pixel[]
Info words = new Info(); // the basic info and text for the game
ToFind toFind =  new ToFind(); // the list of items to be found
Found found = new Found(); // commands for finding the objects
Timer timers = new Timer(); // timer
PFont title, des;
int barWidth = 610; //a few pixels from the edge of the image
int textLine = 50; // when to start a new line
int timer, elapsed, start; // variables for the timer

void setup(){
  size(1000, 700);
  words.setup();
  toFind.allItems();
  found.setup();
  timers.setup();
  background(0);
  minim = new Minim(this);
  bgm = minim.loadFile("bgm.mp3"); //https://freesound.org/people/Slaking_97/sounds/459706/
  correct = minim.loadFile("correct.mp3"); //https://freesound.org/people/unadamlar/sounds/476178/
  bgm.loop(10);
  toFind.printedList();
  words.words();
}

void draw(){
  
  light.draw();
  found.buttons();
  timers.display();
  if (timer == 0) exit(); // exit the program once time is over

  }
  
  
// flashlight effect was learned from various The Coding Train tutorials
