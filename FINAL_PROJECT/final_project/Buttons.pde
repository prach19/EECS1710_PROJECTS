class Buttons {
  int bsize = 200; // height and width of buttons
  int y1 = 200;// y row 1
  int y2 = 440; // y row 2
  int x1 = 50; // x column 1
  int x2 = 400; // x column 2
  int x3 = 750; // x column 3
 
  
 void track1(){
    if(mouseX>x1 && mouseY>y1 && mouseX<x1+bsize && mouseY<y1+bsize && mousePressed==true){
      drums.stop();
      beat.stop();
      heavy.stop();
      livewire.stop();
      techni.stop();
      moon.stop();
      drums.play();
      drums.set(speed,panz,amplitude, 0);
    }
    
    else if(mouseX>x1 && mouseY>y1 && mouseX<x1+bsize && mouseY<y1+bsize){
      fill(73,91,193);
      rect(x1,y1,bsize,bsize);
    }
    
    else{
      fill(51, 65, 149);
      rect(x1,y1,bsize,bsize);
    }
 }
 
 void track2(){
    if(mouseX>x2 && mouseY>y1 && mouseX<x2+bsize && mouseY<y1+bsize && mousePressed==true){
      drums.stop();
      beat.stop();
      heavy.stop();
      livewire.stop();
      techni.stop();
      moon.stop();
      beat.play();
      beat.set(speed,panz,amplitude, 0);
    }
    
    else if(mouseX>x2 && mouseY>y1 && mouseX<x2+bsize && mouseY<y1+bsize){
      fill(238, 89, 104);
      rect(x2,y1,bsize,bsize);
    }
    
    else{
      fill(234, 53, 70);
      rect(x2,y1,bsize,bsize);
    }
 }
 
 
 void track3(){
    if(mouseX>x3 && mouseY>y1 && mouseX<x3+bsize && mouseY<y1+bsize && mousePressed==true){
      drums.stop();
      beat.stop();
      heavy.stop();
      livewire.stop();
      techni.stop();
      moon.stop();
      heavy.play();
      heavy.set(speed,panz,amplitude, 0);
    }
    
    else if(mouseX>x3 && mouseY>y1 && mouseX<x3+bsize && mouseY<y1+bsize){
      fill(173, 133, 255);
      rect(x3,y1,bsize,bsize);
    }
    
    else{
      fill(138, 79, 255);
      rect(x3,y1,bsize,bsize);
    }
 }
 
 void track4(){
    if(mouseX>x1 && mouseY>y2 && mouseX<x1+bsize && mouseY<y2+bsize && mousePressed==true){
      drums.stop();
      beat.stop();
      heavy.stop();
      livewire.stop();
      techni.stop();
      moon.stop();
      livewire.play();
      livewire.set(speed,panz,amplitude, 0);
    }
    
    else if(mouseX>x1 && mouseY>y2 && mouseX<x1+bsize && mouseY<y2+bsize){
      fill(207, 231, 75);
      rect(x1,y2,bsize,bsize);
    }
    
    else{
      fill(193, 223, 31);
      rect(x1,y2,bsize,bsize);
    }
 } 
    
 void track5(){
    if(mouseX>x2 && mouseY>y2 && mouseX<x2+bsize && mouseY<y2+bsize && mousePressed==true){
      drums.stop();
      beat.stop();
      heavy.stop();
      livewire.stop();
      techni.stop();
      moon.stop();
      techni.play();
      techni.set(speed,panz,amplitude, 0);
    }
    
    else if(mouseX>x2 && mouseY>y2 && mouseX<x2+bsize && mouseY<y2+bsize){
      fill(251, 75, 163);
      rect(x2,y2,bsize,bsize);
    }
    
    else{
      fill(250, 25, 139);
      rect(x2,y2,bsize,bsize);
    }
 }
 
 void track6(){
    if(mouseX>x3 && mouseY>y2 && mouseX<x3+bsize && mouseY<y2+bsize && mousePressed==true){
      drums.stop();
      beat.stop();
      heavy.stop();
      livewire.stop();
      techni.stop();
      moon.stop();
      moon.play();
      moon.set(speed,panz,amplitude, 0);
    }
    
    else if(mouseX>x3 && mouseY>y2 && mouseX<x3+bsize && mouseY<y2+bsize && mouseY<640){
      fill(255, 143, 51);
      rect(x3,y2,bsize,bsize);
    }
    
    else{
      fill(255, 118, 5);
      rect(x3,y2,bsize,bsize);
    }
 
 
}

void stopAll(){
    if(mouseX>790 && mouseY>40 && mouseX<930 && mouseY<160 && mousePressed==true){
      drums.stop();
      beat.stop();
      heavy.stop();
      livewire.stop();
      techni.stop();
      moon.stop();
    }
    
    else if(mouseX>790 && mouseY>40 && mouseX<930 && mouseY<160){
      fill(67, 61, 65);
      rect(790,40,140,120);
    }
    
    else{
      fill(46, 42, 38);
      rect(790,40,140,120);
    }
 
 
}

}
