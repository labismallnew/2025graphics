//week13-1-processing-video
//Sketch-Library-Manage Libraries...安裝video
import processing.video.*;//Java使用外掛的匯入
Capture video;//有視訊鏡頭的 用這個版本
Movie movie;//沒鏡頭 改用這個
void setup(){
  size(640,480);//常見的視訊
  //video = new Capture(this,640,480);
  //video.start();//打開視訊
  movie = new Movie(this,"street.mov");//讀檔案
  movie.loop();
}
void draw(){
  //if(video.available()) video.read();
  //image(video,0,0);//若沒有視訊 就註解掉 就不會出錯
  if(movie.available()) movie.read();
  image(movie,0,0);
}
