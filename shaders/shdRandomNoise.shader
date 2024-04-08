//
// Simple passthrough vertex shader
// Made by Essisten
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec3 v_Position;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    v_Position = in_Position;
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
// Made by Essisten
varying vec3 v_Position;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float transparency;
uniform float rng_seed;
float PHI = 1.61803398874989484820459;  // Φ = Golden Ratio   

float random(vec2 value)
{
    return fract(tan(distance(value * PHI, value) * rng_seed) * value.x);
}

void main()
{
     vec4 pixel = texture2D( gm_BaseTexture, v_vTexcoord );
     if (pixel.a == 0.0)
        discard;
     pixel.rgb = vec3(pixel.rgb * (1.0 - transparency) + random(v_Position.xy) * transparency);
     gl_FragColor = pixel;
}
