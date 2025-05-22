//week14-9b-inverse-kinematics-part8
//用簡單的線段 來解真的ID的運算
void setup(){
  size(400,400);
  for(int i=0;i<N;i++){
     p[i] = new PVector(200,350-L*i); 
  }
}
int N=20,L=300/N;
PVector [] p = new PVector[N];//有6個點
void draw(){
  background(255);
  for(int i=0;i<N;i++){//用迴圈 畫點 畫字
    if(i>0) line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
    fill(255,0,0);
    ellipse(p[i].x,p[i].y,8,8);
    fill(0);
    text("p:"+i,p[i].x+10,p[i].y);//字往右一點點
  }
  PVector now = new PVector(mouseX,mouseY);//現在的位置
  p[N-1].x=mouseX;
  p[N-1].y=mouseY;
  for(int i=N-2;i>0;i--){
    PVector v = PVector.sub(now,p[i]).normalize().mult(L);//短向量
    //因為長度限制為50 所以長向量 先長度變1 在乘上50
    p[i].x = p[i+1].x - v.x;//新的位置 是中心 在加長度50的這小段
    p[i].y = p[i+1].y - v.y;//新的位置 是中心 在加長度50的這小段
    now = p[i];
  }
  for(int i=1;i<N;i++){
    PVector v = PVector.sub(p[i],p[i-1]).normalize().mult(L);
    p[i].x = p[i-1].x + v.x;
    p[i].y = p[i-1].y + v.y;
  }
  ellipse(mouseX,mouseY,6,6);//滑鼠也有一個小點 要控制座標移動
  //line(p[4].x,p[4].y,mouseX,mouseY);
}
