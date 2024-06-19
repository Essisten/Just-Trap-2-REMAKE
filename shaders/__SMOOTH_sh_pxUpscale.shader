struct VS_INPUT
{
    float3 in_Position : POSITION0;
    float2 in_TextureCoord : TEXCOORD0;
};

struct VS_OUTPUT
{
    float2 vTexcoord : TEXCOORD0;
    float4 pos : SV_POSITION;
};

VS_OUTPUT main(VS_INPUT input)
{
    VS_OUTPUT output;
    float4 object_space_pos = float4(input.in_Position.x, input.in_Position.y, input.in_Position.z, 1.0);
    output.vTexcoord = float2(input.in_TextureCoord.x * 800.0, input.in_TextureCoord.y * 608.0);
    output.pos = mul(gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION], object_space_pos);
    return output;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~struct PS_INPUT
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
