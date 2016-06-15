uniform sampler2D texture;
uniform vec2 size;
varying vec4 vertTexCoord;



void main(){
    //ピクセルの色を取得．テクスチャ座標なので座標/サイズで位置を定める
    vec3 color = texture2D(texture, gl_FragCoord.xy/size.xy).rgb;
    //ピクセルのRGB要素を足して3で割り，平均をとる
    float aColor = (color.r + color.g + color.b) / 3;
    //出力
    gl_FragColor = vec4(aColor,aColor,aColor, 1.0);
}
