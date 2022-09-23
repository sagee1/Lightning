int x = 133;
int y = 207;
PImage img;

void setup(){
  size(400,400);
  noLoop();
  
  img = loadImage("azula_icon-removebg.png");
  image(img, 0, 100, 150, 150);
}

void draw(){
  
  while (x <= 400){
    int changeX = (int)(Math.random() * 9 + 1);
    int changeY = (int)(Math.random() * 19 - 9);
    stroke(0,0,255);
    line(x, y, x + changeX, y + changeY);
    x = x + changeX;
    y = y + changeY;
  }
  x = 133;
  y = 207;
  System.out.println(mouseX + " " + mouseY);
}

void mousePressed(){
  redraw();
}
