uniform vec2 size;
uniform float t;

void main(){
    vec2 cpos = (gl_FragCoord.xy * 2.0 - size.xy) / min(size.x, size.y);
    float y = length(floor(cpos*12.0));
    float H = 0.5;
    gl_FragColor = vec4(H+H*sin(y-t), H+H*sin(y-t-1.0), H+H*sin(y-t-2), 1.0);
}
