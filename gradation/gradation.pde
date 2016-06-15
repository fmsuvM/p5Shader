PShader mSd;


void setup(){
  size(640,360, P2D);
  
  mSd = loadShader("index.glsl");
}

void draw(){
  shader(mSd);
  rect(0,0, width,height);
}