PShader mSd;
float timeR = 0;
float timeG = 0;
float timeB = 0;

void setup(){
  size(640,360, P2D);
  
  mSd = loadShader("index.glsl");
}

void draw(){
  mSd.set("timeR", timeR);
  mSd.set("timeG", timeG);
  mSd.set("timeB", timeB);
  timeR += 0.001;
  timeG += 0.005;
  timeB += 0.01;
  shader(mSd);
  rect(0,0, width,height);
}