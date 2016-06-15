PShader sd;//Shader読み込み

void setup(){
  size(640,480, P2D);//P2Dレンダラを指定
  sd = loadShader("index.glsl");//GLSLのファイルを読み込み
}

void draw(){
  background(200);
  
  //shader(sd);//Shader実行
  filter(sd);
  translate(width/2,height/2);
  rect(-100,-100, 200,200);//反映される四角形
}