import processing.video.*;

PShader mShader;
Capture camera;

void setup(){
  size(640,360, P2D);
  mShader = loadShader("index.glsl");
  //mShader.set("size", float(width),float(height));
  String[] cameras = Capture.list();
  camera = new Capture(this, cameras[0]);
  camera.start();
  noStroke();
}

void draw(){
  if(camera.available()){
    camera.read();
    mShader.set("videoTex", camera);
    shader(mShader);
    rect(0,0, width,height);
  }
}