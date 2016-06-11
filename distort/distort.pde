//video loading
import processing.video.*;

//using camera
Capture cam;

PShader mShader;
PImage mImage;

void setup() {
  size(640, 360, P2D);//size
  mShader = loadShader("index.glsl"); 
  mImage = loadImage("test.jpg");
  noStroke();

  String[] cameras = Capture.list(); 
  if (cameras == null) {
    cam = new Capture(this, 640, 480);
  } 
  if (cameras.length == 0) {
    exit();
  } else {
    cam = new Capture(this, cameras[0]);
    cam.start();
  }
}

void draw() {
  if (cam.available() == true) {
    cam.read();
    
    //set the uniform srcTex equal to the img file
    mShader.set("srcTex", mImage);//画像を渡す
    
    //disTex is the webcam
    mShader.set("disTex", cam);//camera映像を渡す
    
    //distortion amount
    mShader.set("amt", map(mouseX, 0, width, -10, 10));//0~widthを-3~3に変更. mouseXに反映

    shader(mShader);
    rect(0, 0, width, height);//四角に描画する
  }
}