// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

// Shader created with Shader Forge Beta 0.35 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.35;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.4779412,fgcg:0.425009,fgcb:0.3303417,fgca:1,fgde:0.005,fgrn:0,fgrf:50,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32719,y:32712|diff-3-OUT,spec-8-OUT,gloss-97-OUT,normal-82-RGB,amdfl-2-RGB,amspl-22-RGB;n:type:ShaderForge.SFN_Tex2d,id:2,x:33483,y:32542,ptlb:Diffuse Texture,ptin:_DiffuseTexture,tex:1648de5bc9e926f4290f14d85ed436bc,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3,x:33094,y:32687|A-2-RGB,B-4-RGB;n:type:ShaderForge.SFN_Color,id:4,x:33483,y:32728,ptlb:Diffuse Color,ptin:_DiffuseColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5,x:33483,y:32913,ptlb:Specular,ptin:_Specular,tex:1648de5bc9e926f4290f14d85ed436bc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:7,x:33483,y:33103,ptlb:Specular Color,ptin:_SpecularColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:8,x:33094,y:32879|A-20-RGB,B-7-RGB,C-86-OUT;n:type:ShaderForge.SFN_Tex2d,id:20,x:33483,y:33284,ptlb:Gloss,ptin:_Gloss,tex:c44fb524724159345aeba5cdf7ada587,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Fresnel,id:21,x:33205,y:33331|EXP-92-OUT;n:type:ShaderForge.SFN_Cubemap,id:22,x:33028,y:33180,ptlb:Specular IBL,ptin:_SpecularIBL,cube:2f821dbbb5e173e468876ef2e4eaa490,pvfc:0|DIR-20-RGB,MIP-21-OUT;n:type:ShaderForge.SFN_LightVector,id:41,x:33244,y:33190;n:type:ShaderForge.SFN_Tex2d,id:82,x:33207,y:33639,ptlb:Normal,ptin:_Normal,tex:c44fb524724159345aeba5cdf7ada587,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:86,x:33149,y:33044,ptlb:Specular Amount,ptin:_SpecularAmount,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:92,x:33379,y:33657,ptlb:Fresnel Amount,ptin:_FresnelAmount,min:0,cur:0,max:5;n:type:ShaderForge.SFN_ValueProperty,id:96,x:33587,y:33481,ptlb:Gloss_Amount,ptin:_Gloss_Amount,glob:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:97,x:33652,y:32846|A-20-A,B-96-OUT;proporder:5-7-2-4-20-22-82-86-92-96;pass:END;sub:END;*/

Shader "Shader Forge/Eye_Shader" {
    Properties {
        _Specular ("Specular", 2D) = "white" {}
        _SpecularColor ("Specular Color", Color) = (0.5,0.5,0.5,1)
        _DiffuseTexture ("Diffuse Texture", 2D) = "black" {}
        _DiffuseColor ("Diffuse Color", Color) = (0.5,0.5,0.5,1)
        _Gloss ("Gloss", 2D) = "white" {}
        _SpecularIBL ("Specular IBL", Cube) = "_Skybox" {}
        _Normal ("Normal", 2D) = "bump" {}
        _SpecularAmount ("Specular Amount", Range(0, 1)) = 0
        _FresnelAmount ("Fresnel Amount", Range(0, 5)) = 0
        _Gloss_Amount ("Gloss_Amount", Float ) = 0
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
            uniform sampler2D _DiffuseTexture; uniform float4 _DiffuseTexture_ST;
            uniform float4 _DiffuseColor;
            uniform float4 _SpecularColor;
            uniform sampler2D _Gloss; uniform float4 _Gloss_ST;
            uniform samplerCUBE _SpecularIBL;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _SpecularAmount;
            uniform float _FresnelAmount;
            uniform float _Gloss_Amount;
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
                float2 node_104 = i.uv0;
                float3 normalLocal = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_104.rg, _Normal))).rgb;
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
                float4 node_20 = tex2D(_Gloss,TRANSFORM_TEX(node_104.rg, _Gloss));
                float gloss = (node_20.a*_Gloss_Amount);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 specularColor = (node_20.rgb*_SpecularColor.rgb*_SpecularAmount);
                float3 specularAmb = texCUBElod(_SpecularIBL,float4(node_20.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelAmount))).rgb * specularColor;
                float3 specular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor + specularAmb;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float4 node_2 = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_104.rg, _DiffuseTexture));
                diffuseLight += node_2.rgb; // Diffuse Ambient Light
                finalColor += diffuseLight * (node_2.rgb*_DiffuseColor.rgb);
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
            uniform sampler2D _DiffuseTexture; uniform float4 _DiffuseTexture_ST;
            uniform float4 _DiffuseColor;
            uniform float4 _SpecularColor;
            uniform sampler2D _Gloss; uniform float4 _Gloss_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _SpecularAmount;
            uniform float _Gloss_Amount;
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
                float2 node_105 = i.uv0;
                float3 normalLocal = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_105.rg, _Normal))).rgb;
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
                float4 node_20 = tex2D(_Gloss,TRANSFORM_TEX(node_105.rg, _Gloss));
                float gloss = (node_20.a*_Gloss_Amount);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 specularColor = (node_20.rgb*_SpecularColor.rgb*_SpecularAmount);
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float4 node_2 = tex2D(_DiffuseTexture,TRANSFORM_TEX(node_105.rg, _DiffuseTexture));
                finalColor += diffuseLight * (node_2.rgb*_DiffuseColor.rgb);
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
