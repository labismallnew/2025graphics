//week05-6-pushMatrix-popMatrix-good
//因為有很多的移動旋轉大腦會亂掉 所以用(分階層)做事
void setup(){
  size(400,400); 
}
void draw(){
  background(204);
  pushMatrix();
  translate(width/2,height/2);//把下面這坨移到畫面中心
  rotate(radians(frameCount)*10);
  rect(-50,-5,100,10);//好的
  popMatrix();
  
  pushMatrix();
  translate(width/2-100,height/2);//把下面這坨移到畫面中心
  rotate(radians(frameCount)*10);
  rect(-50,-5,100,10);
  popMatrix();
}
