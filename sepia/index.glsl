//変数定義．値は不変．
#define R_LUMINANCE 0.298912
#define G_LUMINANCE 0.586611
#define B_LUMINANCE 0.114478

uniform sampler2D texture;
uniform vec2 sketchSize;

void main(){
    //ピクセルを取得
    vec3 color = texture2D(texture, (gl_FragCoord.xy / sketchSize.xy)).rgb;
    //ピクセルのRGB要素を足して3で割り，平均をとる
    float aColor = (color.r + color.g + color.b) / 3;
    //RGB要素に上で定義した変数をかける．
    float vColor = color.g * R_LUMINANCE + color.g * G_LUMINANCE + color.b * B_LUMINANCE;
    //セピア調になる様に調整
    color.r = vColor * 0.9;
    color.g = vColor * 0.7;
    color.b = vColor * 0.4;
    gl_FragColor = vec4(color.r, color.g, color.b, 1.0);
}
