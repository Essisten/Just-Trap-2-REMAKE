//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float brightness;

void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    float gray = dot(texColor.rgb * brightness, vec3(0.299, 0.587, 0.114));
    gl_FragColor = vec4(gray, gray, gray, texColor.a);
}

