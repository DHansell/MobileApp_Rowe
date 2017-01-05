// Shader created with Shader Forge Beta 0.35 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.35;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:2,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:False,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32409,y:32531|diff-21-OUT,emission-28-OUT,transm-39-OUT,lwrap-63-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:33212,y:32673,ptlb:Diffuse,ptin:_Diffuse,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:13,x:33221,y:32874,ptlb:Emission,ptin:_Emission,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:19,x:33202,y:33248,ptlb:Emission Color,ptin:_EmissionColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:20,x:33245,y:33055,ptlb:Alpha (A),ptin:_AlphaA,tex:b8284b61f67a97d4c8e4f394b0ea90b1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:21,x:32997,y:32691|A-2-RGB,B-20-A,C-22-RGB;n:type:ShaderForge.SFN_Color,id:22,x:32998,y:33290,ptlb:Diffuse_Color,ptin:_Diffuse_Color,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:28,x:32913,y:32901|A-13-RGB,B-20-A,C-19-RGB,D-54-OUT;n:type:ShaderForge.SFN_Multiply,id:39,x:32892,y:33110|A-13-RGB,B-20-A,C-40-RGB,D-55-OUT;n:type:ShaderForge.SFN_Color,id:40,x:33329,y:33346,ptlb:TransmissionColor,ptin:_TransmissionColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:54,x:33412,y:33141,ptlb:Emission Power,ptin:_EmissionPower,min:-10,cur:1.898454,max:10;n:type:ShaderForge.SFN_Slider,id:55,x:33393,y:33254,ptlb:Transmission Power,ptin:_TransmissionPower,min:-10,cur:1.491637,max:10;n:type:ShaderForge.SFN_Color,id:62,x:33327,y:33611,ptlb:LightWrapColor,ptin:_LightWrapColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:63,x:33062,y:33553|A-62-RGB,B-64-OUT,C-20-A;n:type:ShaderForge.SFN_Slider,id:64,x:33439,y:33513,ptlb:LightWrap Power,ptin:_LightWrapPower,min:-10,cur:0,max:10;proporder:2-13-20-22-19-40-54-55-62-64;pass:END;sub:END;*/

Shader "Shader Forge/ParticleEmission" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Emission ("Emission", 2D) = "white" {}
        _AlphaA ("Alpha (A)", 2D) = "white" {}
        _Diffuse_Color ("Diffuse_Color", Color) = (0.5,0.5,0.5,1)
        _EmissionColor ("Emission Color", Color) = (0.5,0.5,0.5,1)
        _TransmissionColor ("TransmissionColor", Color) = (0.5,0.5,0.5,1)
        _EmissionPower ("Emission Power", Range(-10, 10)) = 1.898454
        _TransmissionPower ("Transmission Power", Range(-10, 10)) = 1.491637
        _LightWrapColor ("LightWrapColor", Color) = (0.5,0.5,0.5,1)
        _LightWrapPower ("LightWrap Power", Range(-10, 10)) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Emission; uniform float4 _Emission_ST;
            uniform float4 _EmissionColor;
            uniform sampler2D _AlphaA; uniform float4 _AlphaA_ST;
            uniform float4 _Diffuse_Color;
            uniform float4 _TransmissionColor;
            uniform float _EmissionPower;
            uniform float _TransmissionPower;
            uniform float4 _LightWrapColor;
            uniform float _LightWrapPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Normals:
                float3 normalDirection =  i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float2 node_77 = i.uv0;
                float4 node_20 = tex2D(_AlphaA,TRANSFORM_TEX(node_77.rg, _AlphaA));
                float3 w = (_LightWrapColor.rgb*_LightWrapPower*node_20.a)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float4 node_13 = tex2D(_Emission,TRANSFORM_TEX(node_77.rg, _Emission));
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * (node_13.rgb*node_20.a*_TransmissionColor.rgb*_TransmissionPower);
                float3 diffuse = (forwardLight+backLight) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
////// Emissive:
                float3 emissive = (node_13.rgb*node_20.a*_EmissionColor.rgb*_EmissionPower);
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * (tex2D(_Diffuse,TRANSFORM_TEX(node_77.rg, _Diffuse)).rgb*node_20.a*_Diffuse_Color.rgb);
                finalColor += emissive;
/// Final Color:
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Emission; uniform float4 _Emission_ST;
            uniform float4 _EmissionColor;
            uniform sampler2D _AlphaA; uniform float4 _AlphaA_ST;
            uniform float4 _Diffuse_Color;
            uniform float4 _TransmissionColor;
            uniform float _EmissionPower;
            uniform float _TransmissionPower;
            uniform float4 _LightWrapColor;
            uniform float _LightWrapPower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Normals:
                float3 normalDirection =  i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float2 node_78 = i.uv0;
                float4 node_20 = tex2D(_AlphaA,TRANSFORM_TEX(node_78.rg, _AlphaA));
                float3 w = (_LightWrapColor.rgb*_LightWrapPower*node_20.a)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float4 node_13 = tex2D(_Emission,TRANSFORM_TEX(node_78.rg, _Emission));
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * (node_13.rgb*node_20.a*_TransmissionColor.rgb*_TransmissionPower);
                float3 diffuse = (forwardLight+backLight) * attenColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * (tex2D(_Diffuse,TRANSFORM_TEX(node_78.rg, _Diffuse)).rgb*node_20.a*_Diffuse_Color.rgb);
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
