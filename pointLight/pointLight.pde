PShader mShader;
PImage mImage;

void setup(){
  size(640,480, P2D);
  mImage = loadImage("test.jpg");
  
  mShader = loadShader("index.glsl");
  mShader.set("res", float(width), float(height));
  mShader.set("tex", mImage);
  noStroke();
}

void draw(){
  mShader.set("mouse", map(mouseX, 0, width, 0 , 1), map(mouseY, 0 , height, 0 , 1) );
  shader(mShader);
  
  rect(0,0,width, height);
}