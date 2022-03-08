String[] lyrics;
String[] words;
int index = 0;
void setup(){
  size(1000,700);
  frameRate(5);
  lyrics = loadStrings("lyrics.txt");
  String entireLyrics = join(lyrics, " ");
  words = split(entireLyrics, " ");
}


void draw(){
  background(0);
  textAlign(CENTER);
  fill(255);
  textSize(32);
  text(words[index], width/2, height/2);
  index++;
}
