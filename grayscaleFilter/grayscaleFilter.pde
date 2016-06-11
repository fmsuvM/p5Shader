//グレースケールフィルタの作成
//Processing側では画像の読み込みやスケッチのサイズを送る
PShader sd;
PImage img;


void setup(){
  size(640,480, P2D);//レンダラ指定

  sd = loadShader("index.glsl");//glslを読み込み
  sd.set("size", float(width),float(height));//キャンバス(画像)のサイズをfloaat型で渡す

  img = loadImage("test.jpg");//画像読み込み

}

void draw(){
  image(img, 0,0);//画像の左上の頂点を原点に配置


  filter(sd);//shader処理を加える
}
