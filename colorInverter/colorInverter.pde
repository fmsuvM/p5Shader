PShader shader;
PImage img;

void setup(){
 size(640,480, P2D);
 shader = loadShader("index.glsl"); 
 img = loadImage("test.jpg");
 noStroke();
}

void draw(){
  //set the uniform srcTex equal to the img file
  shader.set("srcTex", img);

  shader(shader);
  rect(0,0,width, height);
}