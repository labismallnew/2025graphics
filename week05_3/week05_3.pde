//week05-3-atan-dy-dx-text-radians-degrees
//degrees vs. radians 結合 week04-01 和 week05-2
void setup(){
  size(400,400);
}
void draw(){
  background(128);
  line(200,200,400,200);
  line(200,200,mouseX,mouseY);
  float dx = mouseX-200,dy = mouseY-200;
  float a = atan2(dy,dx);//神奇的三角函式 可找到arc弧的radians
  //atan2()出來的值 介於-PI...+PI中間
  textSize(30);
  arc(200,200,200,200,0,a,PIE);//把算出來的arc radians拿來用
  text("radians: "+ a,100,100);//radians弧度/弳度
  text("degrees: "+ degrees(a),100,130);//degrees度
}
