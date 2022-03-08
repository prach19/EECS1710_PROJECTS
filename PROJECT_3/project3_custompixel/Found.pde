class Found{
  int rad = 20; // radius of clicking
  int mid = 5; // finding the middle of the text
  
//setting the appearance of the line
  void setup(){
    stroke(218,52,34);
    strokeWeight(5);
  }
  
//setting the "buttons" that nee to be pressed + crossing out the items from the list
  void buttons(){
    
    //sunscreen
    if(mouseX>452-rad && mouseY>45-rad && mouseX<452+rad && mouseY<45+rad && mousePressed == true){
    line(barWidth, textLine*4-mid, barWidth+130, textLine*4-mid);
    correct.play();
    correct.rewind(); // play the tone everytime an item is found
    }
    
    //yoyo
    if(mouseX>181-rad && mouseY>197-rad && mouseX<181+rad && mouseY<197+rad && mousePressed==true){
    line(barWidth, textLine*5-mid , barWidth+60, textLine*5-mid);
    correct.play();
    correct.rewind();
    }
    
    //lipstick
    if(mouseX>181-rad && mouseY>143-rad && mouseX<181+rad && mouseY<143+rad && mousePressed==true){
    line(barWidth, textLine*6-mid , barWidth+120, textLine*6-mid);
    correct.play();
    correct.rewind();
    }
    
    //light bulb
    if(mouseX>335-rad && mouseY>670-rad && mouseX<335+rad && mouseY<670+rad && mousePressed==true){
    line(barWidth, textLine*7-mid , barWidth+150, textLine*7-mid );
    correct.play();
    correct.rewind();
    }
  
    //airplane
    if(mouseX>239-rad && mouseY>239-rad && mouseX<239+rad && mouseY<239+rad && mousePressed==true){
    line(barWidth, textLine*8-mid , barWidth+120, textLine*8-mid );
    correct.play();
    correct.rewind();
    }
    
    //camera
    if(mouseX>544-30 && mouseY>73-30 && mouseX<544+30 && mouseY<73+30 && mousePressed==true){
    line(barWidth, textLine*9-mid , barWidth+90, textLine*9-mid );
    correct.play();
    correct.rewind();
    }
    
    //candle
    if(mouseX>387-rad && mouseY>225-rad && mouseX<387+rad && mouseY<225+rad && mousePressed==true){
    line(barWidth, textLine*10-mid , barWidth+80, textLine*10-mid );
    correct.play();
    correct.rewind();
    }
    
    //egg
    if(mouseX>320-rad && mouseY>186-rad && mouseX<320+rad && mouseY<186+rad && mousePressed==true){
    line(barWidth, textLine*11-mid , barWidth+45, textLine*11-mid );
    correct.play();
    correct.rewind();
    }
    
    //map
    if(mouseX>431-rad && mouseY>677-rad && mouseX<431+rad && mouseY<677+rad && mousePressed==true){
    line(barWidth, textLine*12-mid , barWidth+50, textLine*12-mid );
    correct.play();
    correct.rewind();
    }
    
    //suitcase
    if(mouseX>258-50 && mouseY>323-50 && mouseX<258+50 && mouseY<323+50 && mousePressed==true){
    line(barWidth, textLine*13-mid , barWidth+120, textLine*13-mid );
    correct.play();
    correct.rewind();
    }
  }


}
