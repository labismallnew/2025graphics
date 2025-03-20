//week05-4-translate-mouseX-mouseY-rotate-radians-frameCount
//比較rotate與translate的順序
void setup(){
  size(400,400); 
}
void draw(){
  background(204);
  //請做以下下測試:把下面2行 調一下順序
  //會發現:畫東西之前的translate()才有效果
  //在電腦圖學理，畫圖時，會照著之前(累積的移動 旋轉)來放東西
  translate(mouseX,mouseY);//移到mouse所在位置
  rotate(radians(frameCount));
  rect(-50,-5,100,10);//寬度100的棒子，但放在左上角
}
