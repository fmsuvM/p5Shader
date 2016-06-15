uniform vec2 size;

void main(){
    vec2 cpos = (gl_FragCoord.xy * 2 - size.xy) / min(size.x, size.y);
    cpos.x;
    float color = 0.2 / length(cpos);
    gl_FragColor = vec4(vec3(color), 1.0);
}
