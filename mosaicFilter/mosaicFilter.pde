PShader sd;
PImage mImage;

int mLv;

void setup(){
  size(640,480, P2D);
  
  sd = loadShader("index.glsl");
  sd.set("sketchSize", float(width),float(height));
  
  mImage = loadImage("img.jpg");
}

void draw(){
  image(mImage, 0,0);
  
  mLv = mouseX/20;
  mLv = mLv + 1;
  sd.set("level", mLv);
  
  filter(sd);
}