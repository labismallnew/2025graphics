//week12-7-sound
//要有聲音 需要聲音的Library函式庫
//Sketch-Library-Managed Libraries找sound
import processing.sound.*;//抄範例
SoundFile mySound;
void setup(){
  size(400,400);
  mySound = new SoundFile(this, "music.mp3");
  mySound.play();
}
void draw(){
  
}
