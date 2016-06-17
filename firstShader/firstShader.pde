PShader mShader;//Shader読み込み

void setup(){
    size(640,480, P2D);//P2Dレンダラを指定
    mShader = loadShader("index.glsl");//GLSLのファイルを読み込み
}

void draw(){
    background(200);

    shader(mShader);//Shader実行
    //filter(mShader);
    rect(0,0, width,height);//反映される四角形
}
