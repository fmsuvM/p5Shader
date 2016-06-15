//ネガポジ反転のプログラム
PShader mShader;
PImage mImage;

void setup(){
  size(640,480, P2D);
  
  mShader = loadShader("index.glsl");
  mShader.set("size", float(width),float(height));
  
  mImage = loadImage("img.jpg");
  
}

void draw(){
  image(mImage, 0,0);
  filter(mShader);
}