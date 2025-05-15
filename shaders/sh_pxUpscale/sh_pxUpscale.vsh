struct VSInput {
    float3 position: POSITION;
    float2 uv: TEXCOORD0;
    float4 color: COLOR0;
};

struct VSOutput {
    float4 position: SV_POSITION;
    float2 uv: TEXCOORD;
    float4 color: COLOR;
};

VSOutput main(VSInput input) {
    float4 object_space_pos = float4(input.position,1.0);
    float4 final_position = mul(gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION],object_space_pos);
    float4 final_color = input.color;
    float2 final_uv = float2(input.uv.x*800.0,input.uv.y*608.0);

    VSOutput output;
    output.position = final_position;
    output.uv = final_uv;
    output.color = final_color;

    return output;
}