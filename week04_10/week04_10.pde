//week04-10-earth-createShape-setTexture-shape
//google:processing sphere texture 可找到程式
size(400,400,P3D);
PShape earth = createShape(SPHERE,100);
PImage img = loadImage("earth.jpg");
earth.setTexture(img);
shape(earth);
