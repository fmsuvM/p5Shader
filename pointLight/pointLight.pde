PShader shader;
PImage img;

void setup(){
  size(640,480, P2D);
  img = loadImage("test.jpg");
  
  shader = loadShader("index.glsl");
  shader.set("res", float(width), float(height));
  shader.set("tex", img);
  noStroke();
}

void draw(){
  shader.set("mouse", map(mouseX, 0, width, 0 , 1), map(mouseY, 0 , height, 0 , 1) );
  shader(shader);
  
  rect(0,0,width, height);
}