Shader "GSN/Outline" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _PrimaryBlend ("PrimaryBlend", Range(0,1)) = 0.0
        _SecTex ("Secondary (RGB)", 2D) = "white" {}

        _GlowColor ("GlowColor", Color) = (0,0,0,1)


        _Outline ("Outline Width", Range(0,0.1)) = 0
        _OutlineColor ("Outline Color", Color) = (1, 1, 1, 1)


        _RimColor ("Rim Color", Color) = (0,0,0,0.0)
        _RimPower ("Rim Power", Range(0.5,8.0)) = 3.0

    }
    SubShader {
        Pass {
            Tags { "RenderType"="Opaque" }
            Cull Front
 
            CGPROGRAM
 
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma warning disable

 
            struct v2f {
                float4 pos : SV_POSITION;
            };
 
            float _Outline;
            float4 _OutlineColor;
 
            float4 vert(appdata_base v) : SV_POSITION {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                float3 normal = mul( UNITY_MATRIX_MV, v.normal);
               // normal.x *= UNITY_MATRIX_P[0][0];
               // normal.y *= UNITY_MATRIX_P[1][1];
                o.pos.xyz += TransformViewToProjection(normal.xyz) * _Outline;
                return o.pos;
            }
 
            half4 frag(v2f i) : COLOR {
                return _OutlineColor;
            }
 
            ENDCG
        }
 
        CGPROGRAM
        #pragma surface surf Lambert
 
        sampler2D _MainTex;
        sampler2D _SecTex;

        half _PrimaryBlend;
        fixed4 _Color;
        fixed4 _GlowColor;

        float4 _RimColor;
        float _RimPower;
 
        struct Input {
            float2 uv_MainTex;
            float2 uv_SecTex;
             float3 viewDir;
        };
 
        void surf(Input IN, inout SurfaceOutput o) {
            fixed4 c = (tex2D (_MainTex, IN.uv_MainTex) *_PrimaryBlend)*_Color +(tex2D (_SecTex, IN.uv_SecTex) *(1-_PrimaryBlend))* _Color;
            o.Albedo = c.rgb;

             half rim = 1.0 - saturate(dot (normalize(IN.viewDir), o.Normal));
             o.Emission = _RimColor.rgb * pow (rim, _RimPower)+_GlowColor;

            o.Alpha = c.a;
        }
 
        ENDCG
    }
    FallBack "Diffuse"
}