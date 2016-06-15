//グレースケールフィルタの作成
PShader mShader;
PImage mImage;


void setup(){
  size(640,480, P2D);//レンダラ指定

  mShader = loadShader("index.glsl");//glslを読み込み
  mShader.set("size", float(width),float(height));//キャンバス(画像)のサイズをfloaat型で渡す

  mImage = loadImage("img.jpg");//画像読み込み

}

void draw(){
  image(mImage, 0,0);//画像の左上の頂点を原点に配置
  filter(mShader);//shader処理を加える
}