void setup(){
  size(600,400,P3D); 
}
void draw(){
 background(128);
 lights();
 pushMatrix();
   translate(300,100);
   sphere(100);
 popMatrix();
 //會出錯
 pushMatrix();
   translate(100,100);
   sphere(100);
 popMatrix();
}
