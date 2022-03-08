class Info{
  //setting up the basic instruction and text
  
  void setup(){
  title = createFont("Courier-Bold", 40);
  des = createFont("Courier", 16);
  
  }

  void words(){
  
  fill(167, 224, 193);
  textFont(title);
  text("scavenger hunt", barWidth, textLine);
  textFont(des);
  text("use your \'flashlight\' on the left to find the items listed below before time runs out.", barWidth, textLine+25, 390, 100);
  
  
  
  
  }



}
