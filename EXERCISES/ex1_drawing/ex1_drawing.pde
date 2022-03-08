PVector v1 = new PVector(100,570);
float a = v1.y;
//25 < a < 575; 
float b = 10; //step
float c = v1.x; //start
//50 < c < 950



void setup() {
  size (1000, 700);
  background (255, 18, 62);
  rectMode(CENTER);
  rect(500, 300, 900, 550, 30);
  restart();

}

void restart(){
  size (1000, 700);
  background (255, 18, 62);
  rectMode(CENTER);
  rect(500, 300, 900, 550, 30);
  //bjhb
}


void draw(){
  
  //left button
  if(mouseX>50 && mouseY>590 && mouseX<150 && mouseY<690 && mousePressed==true){
    line(c, a, c, a-=b);
  }
  
  else if(mouseX>50 && mouseY>590 && mouseX<150 && mouseY<690){
    fill(255);
    ellipseMode(CENTER);
    ellipse(100,640,100,100);
  }
  
  else{
    fill(175);
    ellipse(100,640,100,100);
  }
  
  
 //right button
  if(mouseX>850 && mouseY>590 && mouseX<950 && mouseY<690 && mousePressed==true){
    line(c, a, c+=b, a);
  }
  
  else if(mouseX>850 && mouseY>590 && mouseX<950 && mouseY<690){
    fill(255);
    ellipseMode(CENTER);
    ellipse(900,640,100,100);
  }
  
  else{
    fill(175);
    ellipse(900,640,100,100);
  } 

  
//restart
if(mouseX>450 && mouseY>590 && mouseX<550 && mouseY<690 && mousePressed==true){
    fill(255);
    rect(500, 300, 900, 550, 30);
    a = v1.y;  
    b = 10; 
    c = v1.x; 
    restart();
  }
  
  else if(mouseX>450 && mouseY>590 && mouseX<550 && mouseY<690){
    fill(255);
    rect(500,640,50,50,30);
  }
  
  else{
    fill(175);
    rect(500,640,50,50,30);
  }
}

// need to work on diff directions + the limits of the lines
//i used this to understand how to make buttons: https://stackoverflow.com/questions/21608367/processing-a-simple-button
