//week13-3-texture-textureMode-beginShape-vertex-endShape
//先教貼圖再加進去
PImage img;
void setup(){
  size(400,400,P3D); 
  img = loadImage("chessboard.png");//把圖檔拉進來
  textureMode(NORMAL);//很多種貼圖模式
  //先用最簡單的NORMAL來畫 2個三角形 不像是3D透視的效果
}
void draw(){
  background(128);//灰背景
  beginShape();//開始畫
  texture(img);//把圖片當貼圖
  vertex(40,80,0,0);//4個頂點 的四邊形 會截出兩個三角形
  vertex(320,20,1,0);
  vertex(380,360,1,1);
  vertex(160,380,0,1);
  endShape();
}
