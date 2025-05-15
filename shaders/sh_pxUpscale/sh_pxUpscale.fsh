struct PSInput
{
    float4 position: SV_POSITION;
    float2 uv : TEXCOORD;
    float4 color: COLOR;
};

struct PSOutput {
    float4 color: SV_TARGET;
};

uniform float2 u_texelsPerPixel;

PSOutput main(PSInput input)
{
    PSOutput output;
    float2 locationInTexel = frac(input.uv);
    float2 interp_amount = clamp(locationInTexel / u_texelsPerPixel, 0.0, 0.5) +
        clamp((locationInTexel - float2(1.0, 1.0)) / u_texelsPerPixel + float2(0.5, 0.5), 0.0, 0.5);
    float2 finalCoords = (floor(input.uv) + interp_amount) / float2(800.0, 608.0);
    output.color = gm_BaseTextureObject.Sample(gm_BaseTexture, finalCoords);

    return output;
}