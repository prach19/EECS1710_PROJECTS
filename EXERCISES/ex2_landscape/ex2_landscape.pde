color bg = color(152,190,100);
PImage[] imgs = new PImage[6];


  
void setup(){
  size(1000,700,P2D);
  frameRate(30);
  background(bg);
  imageMode (CENTER);
    imgs[0] = loadImage("dollhouse.png");
    imgs[1] = loadImage("couple.png");
    imgs[2] = loadImage("blood.png");
    imgs[3] = loadImage("knife.png");
    imgs[4] = loadImage("alien.png");
    imgs[5] = loadImage("final.png");
  }
  
void draw(){
  //HOUSE
  rectMode(CENTER);
  fill (245, 67, 94);
  rect(300, 350, 300, 300);
  fill(0);
  triangle(300,50,150,200,450,200);
  
  
  //COUPLE
  fill(203, 168, 103);
  ellipse(800, 450, 50, 50);
  ellipse(870, 450, 50, 50);
  
  //BLOOD
  fill(188,25,19);
  rect(500, 600, 700, 30);
  
  //KNIFE
  fill(19, 113, 188);
  rect(800, 100, 100, 100);
  rect(820, 200, 50, 100);
  
  //ALIEN
  fill(0);
  rect(700, 350, 100, 100);
  
  /*FINAL
  fill(240, 111, 131);
  ellipse (500, 350, 700, 700);
  fill(152,190,100);
  rect(500, 350, 1000, 700);*/
  
}

void keyPressed(){
  if (key =='1'){image(imgs[0], 300, 300);}
  if (key =='2'){image(imgs[1], 835, 450, 200, 200);}
  if (key =='3'){image(imgs[2],500, 600, 600, 100);}
  if (key =='4'){image (imgs[3], 810, 150, 200, 200);}
  if (key =='5'){image(imgs[4], 700, 350, 200, 200);}
  if (key =='6'){image(imgs[5],500, 350, 500, height);}
  if (key =='0'){rect(500,350, 1000,700);}
}

  
//inspo:https://www.youtube.com/watch?v=WaHrWLCUmfc
