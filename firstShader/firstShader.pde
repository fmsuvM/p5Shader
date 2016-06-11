PShader sd;

void setup(){
  size(640,480, P2D);
  sd = loadShader("index.glsl");
}

void draw(){
  background(200);
  
  shader(sd);
  translate(width/2,height/2);
  rect(-100,-100, 200,200);
}