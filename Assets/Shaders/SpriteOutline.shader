﻿// Draws an HDR outline over the sprite borders. 
// Based on Sprites/Default shader from Unity 2017.3.

Shader "Sprites/Outline"
{
    Properties
    {
        _MainTex("Sprite Texture", 2D) = "white" {}
        _Color("Tint", Color) = (1,1,1,1)
        [MaterialToggle] PixelSnap("Pixel snap", Float) = 0
        [HideInInspector] _RendererColor("RendererColor", Color) = (1,1,1,1)
        [HideInInspector] _Flip("Flip", Vector) = (1,1,1,1)
        [PerRendererData] _AlphaTex("External Alpha", 2D) = "white" {}
        [PerRendererData] _EnableExternalAlpha("Enable External Alpha", Float) = 0

        [MaterialToggle] _IsOutlineEnabled("Enable Outline", float) = 0
        _OutlineColor("Outline Color", Color) = (1,1,1,1)
        _OutlineSize("Outline Size", Range(0, 200)) = 1
        _AlphaThreshold("Alpha Threshold", Range(0, 1)) = 0.01


        _SecTex ("Secondary (RGB)", 2D) = "white" {}
        _Angle("Angle", Range(0, 200)) = 0
        _Scale("Scale", Range(0.5, 2)) = 1
    }

    SubShader
    {
        Tags
        {
            "Queue" = "Transparent"
            "IgnoreProjector" = "True"
            "RenderType" = "Transparent"
            "PreviewType" = "Plane"
            "CanUseSpriteAtlas" = "True"
        }

        Cull Off
        Lighting Off
        ZWrite Off
        Blend One OneMinusSrcAlpha

        Pass
        {
            CGPROGRAM

            #include "UnityCG.cginc"

            #pragma vertex ComputeVertex
            #pragma fragment ComputeFragment
            #pragma target 2.0
            #pragma multi_compile_instancing
            #pragma multi_compile _ PIXELSNAP_ON
            #pragma multi_compile _ ETC1_EXTERNAL_ALPHA
            #pragma multi_compile _ SPRITE_OUTLINE_OUTSIDE

            #ifndef SAMPLE_DEPTH_LIMIT
            #define SAMPLE_DEPTH_LIMIT 50
            #endif

            #ifdef UNITY_INSTANCING_ENABLED
            UNITY_INSTANCING_BUFFER_START(PerDrawSprite)
            UNITY_DEFINE_INSTANCED_PROP(fixed4, unity_SpriteRendererColorArray)
            UNITY_DEFINE_INSTANCED_PROP(fixed2, unity_SpriteFlipArray)
            UNITY_INSTANCING_BUFFER_END(PerDrawSprite)
            #define _RendererColor UNITY_ACCESS_INSTANCED_PROP(PerDrawSprite, unity_SpriteRendererColorArray)
            #define _Flip UNITY_ACCESS_INSTANCED_PROP(PerDrawSprite, unity_SpriteFlipArray)

            UNITY_INSTANCING_BUFFER_START(PerDrawSpriteOutline)
            UNITY_DEFINE_INSTANCED_PROP(float,  _IsOutlineEnabled)
            UNITY_DEFINE_INSTANCED_PROP(fixed4, _OutlineColor)
            UNITY_DEFINE_INSTANCED_PROP(float,  _OutlineSize)
            UNITY_DEFINE_INSTANCED_PROP(float,  _AlphaThreshold)
            UNITY_INSTANCING_BUFFER_END(PerDrawSpriteOutline)
            #endif 

            CBUFFER_START(UnityPerDrawSprite)
            #ifndef UNITY_INSTANCING_ENABLED
            fixed4 _RendererColor;
            fixed2 _Flip;
            #endif
            float _EnableExternalAlpha;
            CBUFFER_END

            CBUFFER_START(UnityPerDrawSpriteOutline)
            #ifndef UNITY_INSTANCING_ENABLED
            fixed4 _OutlineColor;
            float _IsOutlineEnabled, _OutlineSize, _AlphaThreshold;
            #endif
            CBUFFER_END

            sampler2D _MainTex, _AlphaTex, _SecTex;
            float4 _SecTex_ST;
            float4 _MainTex_ST;
            float4 _MainTex_TexelSize;
            fixed4 _Color;
            float _Angle;
            float _Scale;

            struct VertexInput
            {
                float4 Vertex : POSITION;
                float4 Color : COLOR;
                float2 TexCoord : TEXCOORD0;
                float2 TexCoord1 : TEXCOORD1;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct VertexOutput
            {
                float4 Vertex : SV_POSITION;
                fixed4 Color : COLOR;
                float2 TexCoord : TEXCOORD0;
                float2 TexCoord1 : TEXCOORD1;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                UNITY_VERTEX_OUTPUT_STEREO
            };

            VertexOutput ComputeVertex(VertexInput vertexInput)
            {
                VertexOutput vertexOutput;

                UNITY_SETUP_INSTANCE_ID(vertexInput);
                UNITY_TRANSFER_INSTANCE_ID(vertexInput, vertexOutput);
                UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(vertexOutput);

                #ifdef UNITY_INSTANCING_ENABLED
                vertexInput.Vertex.xy *= _Flip;
                #endif

                vertexOutput.Vertex = UnityObjectToClipPos(vertexInput.Vertex);
                vertexOutput.TexCoord = vertexInput.TexCoord;
                vertexOutput.Color = vertexInput.Color * _Color * _RendererColor;

                #ifdef PIXELSNAP_ON
                vertexOutput.Vertex = UnityPixelSnap(vertexOutput.Vertex);
                #endif



     
                float2 coord = TRANSFORM_TEX(vertexInput.TexCoord1,_SecTex); 

                 coord-=0.5;
                 float sinX = sin(_Angle/6.3);
                 float cosX = cos(_Angle/6.3);
                 float2x2 rotationMatrix = float2x2( cosX, -sinX, sinX, cosX);
                 coord = mul ( coord, rotationMatrix );
                 coord*=_Scale;
                 coord+=0.5;
                
                vertexOutput.TexCoord1 = coord;


                return vertexOutput;
            }


            // Determines whether _OutlineColor should replace sampledColor at the given texCoord when drawing outside the sprite borders.
            // Will return 1 when the test is positive (should draw outline), 0 otherwise.
            float2 ShouldDrawOutlineOutside (fixed4 sampledColor, float2 texCoord, int isOutlineEnabled, int outlineSize, float alphaThreshold)
            {
                // Won't draw if effect is disabled, outline size is zero or sampled fragment is above alpha threshold.
                if (isOutlineEnabled * outlineSize == 0) return 0;
                if (sampledColor.a > alphaThreshold) return 0;

                float2 texDdx = ddx(texCoord);
                float2 texDdy = ddy(texCoord);
                float2 outV =float2(0,0);

                // Looking for an opaque pixel (sprite border from outise) around computed fragment with given depth (_OutlineSize).
                for (int i = 1; i <= outlineSize; i++)
                {

                    
                    float2 pixelUpTexCoord = texCoord + float2(0, i * _MainTex_TexelSize.y);
                    fixed pixelUpAlpha = tex2Dgrad(_MainTex, pixelUpTexCoord, texDdx, texDdy).a;
                    if (pixelUpAlpha > alphaThreshold) outV+= float2(1,(1-float(i)/outlineSize));

                    float2 pixelDownTexCoord = texCoord - float2(0, i * _MainTex_TexelSize.y);
                    fixed pixelDownAlpha = tex2Dgrad(_MainTex, pixelDownTexCoord, texDdx, texDdy).a;
                    if (pixelDownAlpha > alphaThreshold) outV+= float2(1,(1-float(i)/outlineSize));

                    float2 pixelRightTexCoord = texCoord + float2(i * _MainTex_TexelSize.x, 0);
                    fixed pixelRightAlpha = tex2Dgrad(_MainTex, pixelRightTexCoord, texDdx, texDdy).a;
                    if (pixelRightAlpha > alphaThreshold) outV+= float2(1,(1-float(i)/outlineSize));

                    float2 pixelLeftTexCoord = texCoord - float2(i * _MainTex_TexelSize.x, 0);
                    fixed pixelLeftAlpha = tex2Dgrad(_MainTex, pixelLeftTexCoord, texDdx, texDdy).a;
                    if (pixelLeftAlpha > alphaThreshold) outV+= float2(1,(1-float(i)/outlineSize));
                    
                    float2 p1 = texCoord + float2(i * _MainTex_TexelSize.x, i * _MainTex_TexelSize.y);
                    fixed p1a = tex2Dgrad(_MainTex, p1, texDdx, texDdy).a;
                    if (p1a > alphaThreshold) outV+= float2(1,(1-float(i)/outlineSize));

                    float2 p2 = texCoord + float2(-i * _MainTex_TexelSize.x, -i * _MainTex_TexelSize.y);
                    fixed p2a = tex2Dgrad(_MainTex, p2, texDdx, texDdy).a;
                    if (p2a > alphaThreshold) outV+= float2(1,(1-float(i)/outlineSize));

                    float2 p3 = texCoord + float2(i * _MainTex_TexelSize.x, -i * _MainTex_TexelSize.y);
                    fixed p3a = tex2Dgrad(_MainTex, p3, texDdx, texDdy).a;
                    if (p3a > alphaThreshold) outV+= float2(1,(1-float(i)/outlineSize));

                    float2 p4= texCoord + float2(-i * _MainTex_TexelSize.x, i * _MainTex_TexelSize.y);
                    fixed p4a = tex2Dgrad(_MainTex, p4, texDdx, texDdy).a;
                    if (p4a > alphaThreshold) outV+= float2(1,(1-float(i)/outlineSize));

                }
                outV =float2(saturate(outV.x),saturate(outV.y/outV.x));
                return outV;
            }

            fixed4 SampleSpriteTexture(float2 uv)
            {
                fixed4 color = tex2D(_MainTex, uv);

                #if ETC1_EXTERNAL_ALPHA
                fixed4 alpha = tex2D(_AlphaTex, uv);
                color.a = lerp(color.a, alpha.r, _EnableExternalAlpha);
                #endif

                return color;
            }

            fixed4 ComputeFragment(VertexOutput vertexOutput) : SV_Target
            {
                UNITY_SETUP_INSTANCE_ID(vertexOutput);

                fixed4 color = SampleSpriteTexture(vertexOutput.TexCoord) * vertexOutput.Color;
                fixed4 outlineTex = tex2D(_SecTex, vertexOutput.TexCoord1);
                //color.rgb *= color.a;

                int isOutlineEnabled = UNITY_ACCESS_INSTANCED_PROP(PerDrawSpriteOutline, _IsOutlineEnabled);
                fixed4 outlineColor = UNITY_ACCESS_INSTANCED_PROP(PerDrawSpriteOutline, _OutlineColor);
                int outlineSize = UNITY_ACCESS_INSTANCED_PROP(PerDrawSpriteOutline, _OutlineSize);
                float alphaThreshold = UNITY_ACCESS_INSTANCED_PROP(PerDrawSpriteOutline, _AlphaThreshold);

 
                float2 shouldDrawOutline = ShouldDrawOutlineOutside(color, vertexOutput.TexCoord, isOutlineEnabled, outlineSize, alphaThreshold);
                
                //color.rgb =shouldDrawOutline;
                
                color.rgb = lerp(color.rgb/2, outlineTex.rgb*outlineColor.rgb, shouldDrawOutline.x);
                color.rgb+=color.rgb/2;
                color.a = lerp (color.a ,shouldDrawOutline.y*outlineTex.a*2*outlineColor.a,shouldDrawOutline.x );

                color.rgb *= color.a;
                return color;
            }

            ENDCG
        }
    }
}
