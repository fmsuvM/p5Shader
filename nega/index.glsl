uniform sampler2D texture;
uniform vec2 size;

void main(){
    //ピクセル色を取得
    vec3 color = texture2D(texture, gl_FragCoord.xy/size.xy).rgb;
    //色の最大値1.0からcolorのRGB要素を引けば反転する
    vec3 cColor = 1.0 - color.rgb;

    gl_FragColor = vec4(cColor, 1.0);
}
