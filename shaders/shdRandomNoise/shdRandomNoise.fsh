//
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
