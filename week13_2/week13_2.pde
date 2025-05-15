//week13-2-camera-movie-eye-center-up
//電腦圖學繪圖時 會設定camera的相關係數
import processing.video.*;//要使用影片外掛
Movie movie;//要放影片變數
void setup(){
  size(600,400,P3D); //要記的加上P3D才能有OpenGL 3D功能
  movie = new Movie(this,"street.mov");//請再把steet.mov拉進來
  movie.loop();//迴圈播放
}
void draw(){
  background(128);
  camera(mouseX,mouseY,120,300,200,0,0,1,0); 
  //很多參數 eyeX,eyeY,eyeZ,centerX,centerY,centerZ,upX,upY,upZ
  if(movie.available()) movie.read();//有新畫面 就讀入
  image(movie,0,0);//放影片 放在0 0
}
