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
