//week05-7-many-pushpushMatrix-popMatrix
void setup(){
  size(500,500);
}
void draw(){
  background(204);
  for(int x=50;x<500;x+=100){//每個距離100
    for(int y=50;y<500;y+=100){//每個距離100
      pushMatrix();//今天主角(再塗學理 會往右縮排)
        translate(x,y);//移到對應的x,y 座標位置
        rotate(radians(frameCount));
        rect(-50,-5,100,10);//長度100的棒子
      popMatrix();//今天的主角
    }
  }
}
