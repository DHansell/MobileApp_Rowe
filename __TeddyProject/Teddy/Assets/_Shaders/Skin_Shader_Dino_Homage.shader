// Shader created with Shader Forge Beta 0.35 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.35;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.8308824,fgcg:0.8308824,fgcb:0.8308824,fgca:1,fgde:0.02,fgrn:0,fgrf:50,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:30563,y:32709|diff-1023-OUT,spec-751-OUT,gloss-640-OUT,normal-968-OUT,emission-882-OUT,transm-859-OUT,lwrap-697-OUT,amdfl-1348-OUT,amspl-1306-OUT;n:type:ShaderForge.SFN_LightVector,id:118,x:32401,y:33629;n:type:ShaderForge.SFN_Multiply,id:119,x:32077,y:33613|A-153-RGB,B-118-OUT;n:type:ShaderForge.SFN_Tex2d,id:153,x:31862,y:32805,ptlb:Normal,ptin:_Normal,tex:8bad68471748d354681f24fda9732a59,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:187,x:31582,y:32607,ptlb:texture,ptin:_texture,tex:4a71a1e6f42b75a41857dfa5896a6b9c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:214,x:31862,y:33022,ptlb:Specular,ptin:_Specular,tex:4a71a1e6f42b75a41857dfa5896a6b9c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:268,x:31772,y:33617|IN-119-OUT;n:type:ShaderForge.SFN_Blend,id:291,x:31492,y:33530,blmd:7,clmp:True|SRC-268-OUT,DST-543-OUT;n:type:ShaderForge.SFN_Multiply,id:437,x:31300,y:33095|A-525-OUT,B-291-OUT;n:type:ShaderForge.SFN_Desaturate,id:519,x:31116,y:33095|COL-437-OUT;n:type:ShaderForge.SFN_Desaturate,id:525,x:31527,y:33278|COL-214-RGB;n:type:ShaderForge.SFN_Slider,id:543,x:31843,y:33258,ptlb:Dullness,ptin:_Dullness,min:0,cur:0,max:0.2;n:type:ShaderForge.SFN_Slider,id:640,x:31344,y:32511,ptlb:Gloss,ptin:_Gloss,min:0,cur:0,max:1;n:type:ShaderForge.SFN_LightColor,id:696,x:31445,y:32873;n:type:ShaderForge.SFN_Multiply,id:697,x:31188,y:32958|A-696-RGB,B-1141-OUT;n:type:ShaderForge.SFN_Slider,id:751,x:31344,y:32424,ptlb:Specularity,ptin:_Specularity,min:0,cur:0,max:1;n:type:ShaderForge.SFN_LightVector,id:856,x:31052,y:31810;n:type:ShaderForge.SFN_LightPosition,id:857,x:31167,y:31973;n:type:ShaderForge.SFN_Multiply,id:858,x:30894,y:32017|A-856-OUT,B-857-XYZ;n:type:ShaderForge.SFN_Multiply,id:859,x:30624,y:32167|A-860-OUT,B-1317-RGB,C-858-OUT;n:type:ShaderForge.SFN_Slider,id:860,x:30640,y:31884,ptlb:Transmission,ptin:_Transmission,min:-20,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:882,x:31035,y:32345|A-187-RGB,B-883-OUT;n:type:ShaderForge.SFN_Slider,id:883,x:31344,y:32335,ptlb:Emission,ptin:_Emission,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:968,x:31253,y:32776|A-1152-OUT,B-153-RGB;n:type:ShaderForge.SFN_Blend,id:1023,x:31214,y:32606,blmd:1,clmp:True|SRC-1110-OUT,DST-187-RGB;n:type:ShaderForge.SFN_Multiply,id:1053,x:32019,y:32376|A-1189-OUT,B-1068-RGB;n:type:ShaderForge.SFN_LightColor,id:1068,x:32275,y:32436;n:type:ShaderForge.SFN_OneMinus,id:1110,x:31775,y:32364|IN-1053-OUT;n:type:ShaderForge.SFN_LightVector,id:1141,x:31445,y:32997;n:type:ShaderForge.SFN_NormalVector,id:1152,x:31862,y:32634,pt:False;n:type:ShaderForge.SFN_Vector1,id:1189,x:32244,y:32311,v1:0;n:type:ShaderForge.SFN_Blend,id:1306,x:31009,y:33301,blmd:3,clmp:True|SRC-214-RGB,DST-525-OUT;n:type:ShaderForge.SFN_LightColor,id:1317,x:30837,y:32189;n:type:ShaderForge.SFN_Multiply,id:1348,x:30906,y:32988|A-751-OUT,B-519-OUT;proporder:153-187-214-543-640-751-860-883;pass:END;sub:END;*/

Shader "Shader Forge/Skin_Shader_Dino_Homage" {
    Properties {
        _Normal ("Normal", 2D) = "bump" {}
        _texture ("texture", 2D) = "white" {}
        _Specular ("Specular", 2D) = "white" {}
        _Dullness ("Dullness", Range(0, 0.2)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0
        _Specularity ("Specularity", Range(0, 1)) = 0
        _Transmission ("Transmission", Range(-20, 10)) = 0
        _Emission ("Emission", Range(0, 1)) = 0
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
            uniform float4 _LightColor0;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _texture; uniform float4 _texture_ST;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform float _Dullness;
            uniform float _Gloss;
            uniform float _Specularity;
            uniform float _Transmission;
            uniform float _Emission;
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
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_1361 = i.uv0;
                float3 node_153 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_1361.rg, _Normal)));
                float3 normalLocal = (i.normalDir*node_153.rgb);
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 w = (_LightColor0.rgb*lightDirection)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * (_Transmission*_LightColor0.rgb*(lightDirection*_WorldSpaceLightPos0.rgb));
                float3 diffuse = (forwardLight+backLight) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
////// Emissive:
                float4 node_187 = tex2D(_texture,TRANSFORM_TEX(node_1361.rg, _texture));
                float3 emissive = (node_187.rgb*_Emission);
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float4 node_214 = tex2D(_Specular,TRANSFORM_TEX(node_1361.rg, _Specular));
                float node_525 = dot(node_214.rgb,float3(0.3,0.59,0.11));
                float3 specularColor = float3(_Specularity,_Specularity,_Specularity);
                float3 specularAmb = saturate((node_214.rgb+node_525-1.0)) * specularColor;
                float3 specular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor + specularAmb;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float node_1348 = (_Specularity*dot((node_525*saturate((_Dullness/(1.0-(1.0 - (node_153.rgb*lightDirection)))))),float3(0.3,0.59,0.11)));
                diffuseLight += float3(node_1348,node_1348,node_1348); // Diffuse Ambient Light
                finalColor += diffuseLight * saturate(((1.0 - (0.0*_LightColor0.rgb))*node_187.rgb));
                finalColor += specular;
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
            uniform float4 _LightColor0;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _texture; uniform float4 _texture_ST;
            uniform float _Gloss;
            uniform float _Specularity;
            uniform float _Transmission;
            uniform float _Emission;
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
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_1362 = i.uv0;
                float3 node_153 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_1362.rg, _Normal)));
                float3 normalLocal = (i.normalDir*node_153.rgb);
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 w = (_LightColor0.rgb*lightDirection)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * (_Transmission*_LightColor0.rgb*(lightDirection*_WorldSpaceLightPos0.rgb));
                float3 diffuse = (forwardLight+backLight) * attenColor;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 specularColor = float3(_Specularity,_Specularity,_Specularity);
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float4 node_187 = tex2D(_texture,TRANSFORM_TEX(node_1362.rg, _texture));
                finalColor += diffuseLight * saturate(((1.0 - (0.0*_LightColor0.rgb))*node_187.rgb));
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
