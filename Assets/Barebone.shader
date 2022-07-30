Shader "ShaderDev/Barebone"
{
    Properties
    {
        _Number ("Number", Int) = 1
        _Color ("Color", Color) = (0,0,0,0)
    }

    Subshader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            
            uniform half4 _Color;

            struct vertIn
            {
                float4 vPos : POSITION;
            };

            struct vertOut
            {
                float4 pos : SV_POSITION;
            };

            vertOut vert(vertIn v)
            {
                vertOut o; 
                o.pos = UnityObjectToClipPos(v.vPos); 
                return o;
            }

            half4 frag(vertOut i) : COLOR
            {
                return _Color;
            }

            ENDCG
        } 
    }
}