PShader sd;

void setup(){
  size(640,480, P2D);
  
  sd = loadShader("index.glsl");
  sd.set("size", float(width), float(height));
  
}

void draw(){
  shader(sd);
  rect(0,0, width,height);
  
  color c = get(mouseX,mouseY);
  println(c);
}