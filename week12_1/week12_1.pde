//week12-1-gundam-head-body-uparm-upuparm-hand
//修改自week09-2
//再加上week09-5
//開專案的檔案總管 把week09-5的模型複製到week12-1
//再把week09-5的左邊的一堆 push trt pop 貼到後面 執行時 mouse亂轉
PShape body,head;
PShape uparm1,upuparm1,hand1;//week09-5
void setup(){
  size(400,400,P3D); 
  body = loadShape("body.obj");
  head = loadShape("head.obj");
  uparm1 = loadShape("uparm1.obj");//week09-5
  upuparm1 = loadShape("upuparm1.obj");//week09-5
  hand1 = loadShape("hand1.obj");//week09-5
}
void draw(){
  translate(200,300);
  background(204);
  sphere(10);//原點的球
  
  scale(10,-10,10);
  
  shape(body,0,0);
  pushMatrix();
    translate(0,22.5);
    rotateY(radians(mouseX-200));
    rotateX(radians(mouseY-60));
    translate(0,-22.5);
    shape(head,0,0); 
  popMatrix();
  
  pushMatrix();
    shape(upuparm1,0,0); //上上手臂
    pushMatrix();
      translate(-4.1,19.9);//再掛回去原本的位置
      rotateZ(radians(mouseX));
      translate(4.1,-19.9);//把物體旋轉中心 放到座標中心
      shape(uparm1,0,0);//上手臂
      pushMatrix();
        translate(-4.5,16.9);
        rotateX(radians(mouseX));
        translate(4.5,-16.9);//剛剛把手移到座標中心的移動量
        //translate(mouseX/10.0,-mouseY/10.0);//一邊移動 一邊找到數值
        //println(mouseX/10.0,-mouseY/10.0);//印出適合的數值 ex. 4.5 -16.9
        shape(hand1,0,0);
      popMatrix();
    popMatrix();
  popMatrix();
}
