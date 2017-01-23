// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

// Shader created with Shader Forge Beta 0.35 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.35;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|diff-25-OUT,spec-60-OUT,gloss-70-OUT,normal-8-RGB,amdfl-25-OUT,amspl-25-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:33396,y:32570,ptlb:Diffuse,ptin:_Diffuse,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4,x:33443,y:32830,ptlb:Specular,ptin:_Specular,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6,x:33398,y:33045,ptlb:Gloss,ptin:_Gloss,ntxv:1,isnm:False|MIP-10-OUT;n:type:ShaderForge.SFN_Tex2d,id:8,x:33425,y:33312,ptlb:Normal,ptin:_Normal,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:9,x:33630,y:32855,ptlb:Specular Amount,ptin:_SpecularAmount,min:0,cur:0.2917809,max:3;n:type:ShaderForge.SFN_Slider,id:10,x:33653,y:33019,ptlb:Gloss Amount,ptin:_GlossAmount,min:0,cur:0.2953794,max:1;n:type:ShaderForge.SFN_Slider,id:11,x:33842,y:33171,ptlb:Fresnel Amount,ptin:_FresnelAmount,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Fresnel,id:12,x:33653,y:33176|EXP-11-OUT;n:type:ShaderForge.SFN_Multiply,id:25,x:33063,y:32421|A-35-RGB,B-2-RGB;n:type:ShaderForge.SFN_Color,id:35,x:33621,y:32443,ptlb:Diffuse Color,ptin:_DiffuseColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:42,x:33677,y:32665,ptlb:Specular Color,ptin:_SpecularColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:50,x:33203,y:32853|A-4-RGB,B-42-RGB,C-12-OUT;n:type:ShaderForge.SFN_Multiply,id:60,x:33129,y:32699|A-9-OUT,B-50-OUT;n:type:ShaderForge.SFN_Multiply,id:70,x:33228,y:33011|A-6-A,B-10-OUT;proporder:4-9-11-2-6-10-8-35-42;pass:END;sub:END;*/

Shader "Shader Forge/ClawShader" {
    Properties {
        _Specular ("Specular", 2D) = "white" {}
        _SpecularAmount ("Specular Amount", Range(0, 3)) = 0.2917809
        _FresnelAmount ("Fresnel Amount", Range(0, 1)) = 0
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Gloss ("Gloss", 2D) = "gray" {}
        _GlossAmount ("Gloss Amount", Range(0, 1)) = 0.2953794
        _Normal ("Normal", 2D) = "bump" {}
        _DiffuseColor ("Diffuse Color", Color) = (0.5,0.5,0.5,1)
        _SpecularColor ("Specular Color", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform sampler2D _Gloss; uniform float4 _Gloss_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _SpecularAmount;
            uniform float _GlossAmount;
            uniform float _FresnelAmount;
            uniform float4 _DiffuseColor;
            uniform float4 _SpecularColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), unity_WorldToObject).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_90 = i.uv0;
                float3 normalLocal = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_90.rg, _Normal))).rgb;
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
///////// Gloss:
                float gloss = (tex2Dlod(_Gloss,float4(TRANSFORM_TEX(node_90.rg, _Gloss),0.0,_GlossAmount)).a*_GlossAmount);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 node_25 = (_DiffuseColor.rgb*tex2D(_Diffuse,TRANSFORM_TEX(node_90.rg, _Diffuse)).rgb);
                float3 specularColor = (_SpecularAmount*(tex2D(_Specular,TRANSFORM_TEX(node_90.rg, _Specular)).rgb*_SpecularColor.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelAmount)));
                float3 specularAmb = node_25 * specularColor;
                float3 specular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor + specularAmb;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                diffuseLight += node_25; // Diffuse Ambient Light
                finalColor += diffuseLight * node_25;
                finalColor += specular;
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
            
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform sampler2D _Gloss; uniform float4 _Gloss_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _SpecularAmount;
            uniform float _GlossAmount;
            uniform float _FresnelAmount;
            uniform float4 _DiffuseColor;
            uniform float4 _SpecularColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), unity_WorldToObject).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_91 = i.uv0;
                float3 normalLocal = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_91.rg, _Normal))).rgb;
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor;
///////// Gloss:
                float gloss = (tex2Dlod(_Gloss,float4(TRANSFORM_TEX(node_91.rg, _Gloss),0.0,_GlossAmount)).a*_GlossAmount);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 specularColor = (_SpecularAmount*(tex2D(_Specular,TRANSFORM_TEX(node_91.rg, _Specular)).rgb*_SpecularColor.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelAmount)));
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float3 node_25 = (_DiffuseColor.rgb*tex2D(_Diffuse,TRANSFORM_TEX(node_91.rg, _Diffuse)).rgb);
                finalColor += diffuseLight * node_25;
                finalColor += specular;
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
