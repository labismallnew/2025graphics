//week08-3-another-obj-large
PShape gundam; // 要再把 Gundam.obj 等檔案拉進來
void setup(){
  size(400,400,P3D);
  gundam = loadShape("FinalBaseMesh.obj");
}
void draw(){
  background(128);
  translate(width/2,height/2+100);
  pushMatrix();
    scale(10,-10,10);
    rotateY(radians(frameCount));
    shape(gundam,0,0);
  popMatrix();
  pushMatrix();
    translate(100,0,0);
    scale(10,-10,10);
    shape(gundam,0,0);
  popMatrix();
}
