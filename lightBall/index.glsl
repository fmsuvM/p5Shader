uniform vec2 size;
uniform float t;

void main(){
    vec2 cpos = (gl_FragCoord.xy * 2 - size.xy) / min(size.x, size.y);
    float color = 0.01 / abs(length(cpos) - 0.5);
    gl_FragColor = vec4(vec3(color), 1.0);
}
