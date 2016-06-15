uniform vec2 size;

void main(){
  vec2 color = gl_FragCoord.xy/size.xy;

  gl_FragColor = vec4(color.x, color.y, 0.5,  1.0);
}
