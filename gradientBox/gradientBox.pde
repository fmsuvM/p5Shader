PShader mShader, rShader;
float time = 0.0;

void setup(){
  size(640,480, P3D);
  
  mShader = loadShader("index.glsl");
  rShader = loadShader("red.glsl");
  mShader.set("size", float(width),float(height));
  rShader.set("size", float(width),float(height));
  //noStroke();
}

void draw(){
  
  
  pushMatrix();
    translate(width/4, height/2);
    fill(255,0,0);
    rotateY(radians(60));
    rotateX(radians(30));
    shader(mShader);
    box(100);
  popMatrix();
  
  pushMatrix();
    translate(width/4 * 3, height/2);
    fill(0,255,0);
    rotateY(radians(-60));
    rotateX(radians(30));
    shader(mShader);
    box(100);
  popMatrix();
  
  pushMatrix();
    translate(width/2,height/2);
    rotateX(radians(60));
    shader(rShader);
    box(100);
  popMatrix();
  
  mShader.set("t", time);
  time += 0.5;
}