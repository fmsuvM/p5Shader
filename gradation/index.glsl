uniform float timeR;
uniform float timeG;
uniform float timeB;
varying vec4 vertTexCoord;

void main(){
    gl_FragColor = vec4(vertTexCoord.x, vertTexCoord.y, 0.0, 1.0);
}
