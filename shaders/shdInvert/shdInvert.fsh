//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;

void main()
{
     vec4 clr = texture2D( gm_BaseTexture, v_vTexcoord );
     clr.rgb = 1.0 - clr.rgb;
     gl_FragColor = clr;
}

