uniform vec2 size;
uniform float tileSize;

varying vec4 vertTexCoord;

void main(){
	//uvに(0.0, 0.0) 〜 (1.0,1.0)を格納
	vec2 uv = gl_FragCoord.xy/size.xy;

	//タイルのサイズを調整する. 縦横比が違う場合のみ比率をかける. 縦横比が1:1なら必要ない
	uv.x *= size.x / size.y;
	//uv.y *= size.y / size.x;//どちらでも可

	//色を指定. mod(a,b)は a - b*floor(a/b)を返す.
	//floor(c) はc以下の最大の整数を返す.1.5だったら1.0など
	float tile = floor(uv.x * tileSize) + floor(uv.y * tileSize);
	//0.0 か 1.0を返す
	float col = mod(tile, 2.0);

	gl_FragColor = vec4(vec3(col, col, col),1.0);
}
