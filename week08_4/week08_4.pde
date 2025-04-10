//week08-4-
//慢慢把切割開的模式 逐一組合起來
size(400,400,P3D);
translate(width/2,height/2+100);

PShape body = loadShape("body.obj");

scale(10,-10,10);
shape(body,0,0);
