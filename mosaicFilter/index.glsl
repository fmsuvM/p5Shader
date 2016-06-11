uniform sampler2D texture;
uniform vec2 sketchSize;
uniform int level;

void main(){
    vec2 target;
    target.x = int(gl_FragCoord.x/level) * level;
    target.y = int(gl_FragCoord.y/level) * level;

    vec3 color = texture2D(texture, target.xy/sketchSize.xy).rgb;

    gl_FragColor = vec4(color, 1);
}
