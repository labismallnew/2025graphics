//week09-2-gundam-head-body-push-trt-pop
PShape body,head;
void setup(){
  size(400,400,P3D); 
  body = loadShape("body.obj");
  head = loadShape("head.obj");
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
}
