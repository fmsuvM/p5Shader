PShader mShader;
float time;

void setup(){
  size(640,480, P2D);
  
  mShader = loadShader("index.glsl");
  mShader.set("size", float(width),float(height));
  noStroke();
}

void draw(){
  mShader.set("t", time);
  shader(mShader);
  rect(0,0, width,height);
  
  time+=0.01;
}