class Timer{
//creating th etimer
  
  void setup(){
  start=millis();
  }
  
  void display(){
  
  fill(137, 205, 187);
  rect(857, 275, 100, 100, 10);
  elapsed = millis() - start;
  timer = (62000 - elapsed)/1000; // 62s is used in order to give the program 1s to load up completely
  fill(255);
  textSize(60);
  text(timer, 870, 350);
  }

}
