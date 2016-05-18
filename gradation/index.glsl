uniform float timeR;
uniform float timeG;
uniform float timeB;
uniform float c;
varying vec4 vertTexCoord;

void main(){
    gl_FragColor = vec4(vertTexCoord.x, timeG, timeB, 1.0);
}
