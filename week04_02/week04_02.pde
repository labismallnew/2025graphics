//week04-02-atan2-for-x-dx-dy-cos-sin
void setup(){
  size(600,300); 
}
void draw(){
  background(#C0FFEE);
  for(int x=150;x<=450;x+=300){
    ellipse(x,150,100,100);
    float dx = mouseX-x,dy = mouseY-150;
    float a = atan2(dy,dx);
    ellipse(x+cos(a)*25,150+sin(a)*25,50,50);
  }
}
