uniform sampler2D videoTex;
//uniform vec2 size;
varying vec4 vertTexCoord;

void main(){
    vec4 tex = texture2D(videoTex, vertTexCoord);

	gl_FragColor = tex;
}
