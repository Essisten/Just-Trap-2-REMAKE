struct PS_INPUT
{
    float2 vTexcoord : TEXCOORD0;
};

float2 u_texelsPerPixel;

float4 main(PS_INPUT input) : SV_Target
{
    float2 locationInTexel = frac(input.vTexcoord);
    float2 interp_amount = clamp(locationInTexel / u_texelsPerPixel, 0.0, 0.5) +
        clamp((locationInTexel - float2(1.0, 1.0)) / u_texelsPerPixel + float2(0.5, 0.5), 0.0, 0.5);
    float2 finalCoords = (floor(input.vTexcoord) + interp_amount) / float2(800.0, 608.0);
    return tex2D(gm_BaseTexture, finalCoords);
}
