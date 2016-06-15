PShader mShader;

void setup(){
  size(640,480, P2D);
  mShader = loadShader("index.glsl");
  mShader.set("size", float(width), float(height));
  noStroke();
}

void draw(){
  mShader.set("tileSize", map(mouseX, 0,height, 2,40));
  shader(mShader);
  rect(0,0,width, height);
}