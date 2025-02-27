PImage img;
void setup(){
  size(400,400);
  img=loadImage("cute.png");
}
void draw(){
  background(img);
  fill(255,170);
  rect(0,0,400,400);
  
  stroke(255,0,0);
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}
