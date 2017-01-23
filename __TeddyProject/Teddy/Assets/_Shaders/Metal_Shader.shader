// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

// Shader created with Shader Forge Beta 0.35 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.35;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.6470588,fgcg:0.6470588,fgcb:0.6470588,fgca:1,fgde:0.005,fgrn:0,fgrf:50,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32234,y:32567|diff-146-OUT,spec-152-OUT,gloss-535-OUT,normal-9-RGB,transm-614-OUT,lwrap-628-OUT,amdfl-574-OUT,amspl-586-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:34223,y:32322,ptlb:Texture,ptin:_Texture,tex:be25b3e4026f91d4cafd261fe47673e4,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8,x:33879,y:32900,ptlb:Specular,ptin:_Specular,tex:36e87cf6499e99f4a9e480bb104bfe5e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9,x:33120,y:33003,ptlb:Normal,ptin:_Normal,tex:b78c80054abcecb45b604e9853a43986,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:10,x:34064,y:32601,ptlb:Specularity,ptin:_Specularity,min:0,cur:0.4549958,max:2;n:type:ShaderForge.SFN_Blend,id:11,x:33653,y:32774,blmd:1,clmp:True|SRC-8-RGB,DST-10-OUT;n:type:ShaderForge.SFN_Color,id:144,x:34228,y:32855,ptlb:Color,ptin:_Color,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:145,x:34228,y:32691,ptlb:Specular Color,ptin:_SpecularColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:146,x:33617,y:32621|A-2-RGB,B-144-RGB;n:type:ShaderForge.SFN_Multiply,id:152,x:33142,y:32707|A-145-RGB,B-11-OUT,C-388-RGB;n:type:ShaderForge.SFN_Cubemap,id:212,x:34312,y:33424,ptlb:DiffuseIBL,ptin:_DiffuseIBL,cube:f466cf7415226e046b096197eb7341aa,pvfc:1|DIR-550-OUT;n:type:ShaderForge.SFN_Fresnel,id:353,x:33313,y:33568|EXP-524-OUT;n:type:ShaderForge.SFN_Tex2d,id:388,x:33629,y:33104,ptlb:Gloss,ptin:_Gloss,tex:36e87cf6499e99f4a9e480bb104bfe5e,ntxv:1,isnm:False;n:type:ShaderForge.SFN_Slider,id:489,x:34522,y:33562,ptlb:Diffuse_IBL Power,ptin:_Diffuse_IBLPower,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:524,x:33521,y:33685,ptlb:Fresnel power,ptin:_Fresnelpower,min:0,cur:1.196696,max:5;n:type:ShaderForge.SFN_ValueProperty,id:534,x:33213,y:32904,ptlb:Gloss Amount,ptin:_GlossAmount,glob:False,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:535,x:32941,y:32783|A-388-A,B-534-OUT;n:type:ShaderForge.SFN_Multiply,id:546,x:34040,y:33287|A-212-RGB,B-548-OUT;n:type:ShaderForge.SFN_Multiply,id:547,x:33747,y:33372|A-546-OUT,B-212-RGB,C-353-OUT,D-489-OUT;n:type:ShaderForge.SFN_Vector1,id:548,x:34264,y:33308,v1:8;n:type:ShaderForge.SFN_NormalVector,id:550,x:34753,y:33375,pt:True;n:type:ShaderForge.SFN_Cubemap,id:558,x:34195,y:33652,ptlb:Specular IBL,ptin:_SpecularIBL,cube:2f821dbbb5e173e468876ef2e4eaa490,pvfc:0|DIR-562-OUT;n:type:ShaderForge.SFN_Multiply,id:559,x:33886,y:33786|A-558-A,B-561-OUT;n:type:ShaderForge.SFN_Vector1,id:561,x:34147,y:33802,v1:12;n:type:ShaderForge.SFN_ViewReflectionVector,id:562,x:34522,y:33716;n:type:ShaderForge.SFN_Multiply,id:563,x:33886,y:33587|A-558-RGB,B-559-OUT;n:type:ShaderForge.SFN_Multiply,id:574,x:32961,y:33422|A-353-OUT,B-547-OUT;n:type:ShaderForge.SFN_Multiply,id:586,x:33242,y:33301|A-388-RGB,B-563-OUT,C-353-OUT;n:type:ShaderForge.SFN_Slider,id:597,x:32903,y:32320,ptlb:Transmission,ptin:_Transmission,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:614,x:32571,y:32508|A-597-OUT,B-388-RGB;n:type:ShaderForge.SFN_ValueProperty,id:626,x:32620,y:33374,ptlb:LW_Multiplier,ptin:_LW_Multiplier,glob:False,v1:2;n:type:ShaderForge.SFN_Slider,id:627,x:32443,y:33201,ptlb:LightWrap,ptin:_LightWrap,min:0,cur:0.5,max:2;n:type:ShaderForge.SFN_Multiply,id:628,x:32570,y:32917|A-626-OUT,B-627-OUT;proporder:2-8-10-9-144-145-212-388-489-524-534-558-597-627-626;pass:END;sub:END;*/

Shader "Shader Forge/Metal_Shader" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _Specular ("Specular", 2D) = "white" {}
        _Specularity ("Specularity", Range(0, 2)) = 0.4549958
        _Normal ("Normal", 2D) = "bump" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _SpecularColor ("Specular Color", Color) = (0.5,0.5,0.5,1)
        _DiffuseIBL ("DiffuseIBL", Cube) = "_Skybox" {}
        _Gloss ("Gloss", 2D) = "gray" {}
        _Diffuse_IBLPower ("Diffuse_IBL Power", Range(0, 1)) = 0
        _Fresnelpower ("Fresnel power", Range(0, 5)) = 1.196696
        _GlossAmount ("Gloss Amount", Float ) = 0.2
        _SpecularIBL ("Specular IBL", Cube) = "_Skybox" {}
        _Transmission ("Transmission", Range(0, 1)) = 0
        _LightWrap ("LightWrap", Range(0, 2)) = 0.5
        _LW_Multiplier ("LW_Multiplier", Float ) = 2
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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Specularity;
            uniform float4 _Color;
            uniform float4 _SpecularColor;
            uniform samplerCUBE _DiffuseIBL;
            uniform sampler2D _Gloss; uniform float4 _Gloss_ST;
            uniform float _Diffuse_IBLPower;
            uniform float _Fresnelpower;
            uniform float _GlossAmount;
            uniform samplerCUBE _SpecularIBL;
            uniform float _Transmission;
            uniform float _LW_Multiplier;
            uniform float _LightWrap;
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
                float2 node_635 = i.uv0;
                float3 normalLocal = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_635.rg, _Normal))).rgb;
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float node_628 = (_LW_Multiplier*_LightWrap);
                float3 w = float3(node_628,node_628,node_628)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float4 node_388 = tex2D(_Gloss,TRANSFORM_TEX(node_635.rg, _Gloss));
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * (_Transmission*node_388.rgb);
                float3 diffuse = (forwardLight+backLight) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
///////// Gloss:
                float gloss = (node_388.a*_GlossAmount);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float4 node_558 = texCUBE(_SpecularIBL,viewReflectDirection);
                float node_353 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnelpower);
                float3 specularColor = (_SpecularColor.rgb*saturate((tex2D(_Specular,TRANSFORM_TEX(node_635.rg, _Specular)).rgb*_Specularity))*node_388.rgb);
                float3 specularAmb = (node_388.rgb*(node_558.rgb*(node_558.a*12.0))*node_353) * specularColor;
                float3 specular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor + specularAmb;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float4 node_212 = texCUBE(_DiffuseIBL,normalDirection);
                diffuseLight += (node_353*((node_212.rgb*8.0)*node_212.rgb*node_353*_Diffuse_IBLPower)); // Diffuse Ambient Light
                finalColor += diffuseLight * (tex2D(_Texture,TRANSFORM_TEX(node_635.rg, _Texture)).rgb*_Color.rgb);
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
            uniform float4 _LightColor0;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Specularity;
            uniform float4 _Color;
            uniform float4 _SpecularColor;
            uniform sampler2D _Gloss; uniform float4 _Gloss_ST;
            uniform float _GlossAmount;
            uniform float _Transmission;
            uniform float _LW_Multiplier;
            uniform float _LightWrap;
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
                float2 node_636 = i.uv0;
                float3 normalLocal = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_636.rg, _Normal))).rgb;
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float node_628 = (_LW_Multiplier*_LightWrap);
                float3 w = float3(node_628,node_628,node_628)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float4 node_388 = tex2D(_Gloss,TRANSFORM_TEX(node_636.rg, _Gloss));
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * (_Transmission*node_388.rgb);
                float3 diffuse = (forwardLight+backLight) * attenColor;
///////// Gloss:
                float gloss = (node_388.a*_GlossAmount);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 specularColor = (_SpecularColor.rgb*saturate((tex2D(_Specular,TRANSFORM_TEX(node_636.rg, _Specular)).rgb*_Specularity))*node_388.rgb);
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * (tex2D(_Texture,TRANSFORM_TEX(node_636.rg, _Texture)).rgb*_Color.rgb);
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
