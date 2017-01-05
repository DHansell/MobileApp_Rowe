// Upgrade NOTE: commented out 'float4 unity_LightmapST', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_Lightmap', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_LightmapInd', a built-in variable
// Upgrade NOTE: replaced tex2D unity_Lightmap with UNITY_SAMPLE_TEX2D
// Upgrade NOTE: replaced tex2D unity_LightmapInd with UNITY_SAMPLE_TEX2D_SAMPLER

// Shader created with Shader Forge Beta 0.35 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.35;sub:START;pass:START;ps:flbk:Diffuse,lico:1,lgpr:1,nrmq:1,limd:3,uamb:True,mssp:False,lmpd:True,lprd:False,enco:False,frtr:True,vitr:True,dbil:True,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.8308824,fgcg:0.8308824,fgcb:0.8308824,fgca:1,fgde:0.02,fgrn:0,fgrf:50,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:29517,y:32638|diff-2686-OUT,spec-2291-OUT,gloss-2174-OUT,normal-153-RGB,emission-2780-OUT,lwrap-2794-OUT,amspl-2627-OUT;n:type:ShaderForge.SFN_Tex2d,id:153,x:30541,y:32953,ptlb:Normal,ptin:_Normal,tex:0b3ded81635cedd469ceb52c3c4f6eed,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:187,x:30276,y:32008,ptlb:Diffuse,ptin:_Diffuse,tex:7a04e748f389bec4ba5e571c13b87fac,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:214,x:30767,y:32374,ptlb:Specular,ptin:_Specular,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Blend,id:2049,x:30524,y:32523,blmd:8,clmp:True|SRC-214-RGB,DST-2600-OUT;n:type:ShaderForge.SFN_Color,id:2112,x:30281,y:32209,ptlb:Diffuse_Color,ptin:_Diffuse_Color,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Blend,id:2113,x:29938,y:32170,blmd:1,clmp:True|SRC-187-RGB,DST-2112-RGB;n:type:ShaderForge.SFN_Slider,id:2166,x:30524,y:32715,ptlb:Specularity,ptin:_Specularity,min:0,cur:0.07401214,max:1;n:type:ShaderForge.SFN_Blend,id:2167,x:30281,y:32523,blmd:10,clmp:True|SRC-2049-OUT,DST-2166-OUT;n:type:ShaderForge.SFN_Blend,id:2174,x:29973,y:32719,blmd:1,clmp:True|SRC-2304-A,DST-2612-OUT;n:type:ShaderForge.SFN_Blend,id:2291,x:29940,y:32530,blmd:1,clmp:True|SRC-2292-RGB,DST-2167-OUT;n:type:ShaderForge.SFN_Color,id:2292,x:30281,y:32374,ptlb:Specular Color,ptin:_SpecularColor,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:2304,x:30281,y:32702,ptlb:GlossMap,ptin:_GlossMap,tex:8141c5528d7980549923df0b769364a8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Fresnel,id:2600,x:30779,y:32563|EXP-2664-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2612,x:30281,y:32880,ptlb:GlossAmount,ptin:_GlossAmount,glob:False,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:2627,x:29903,y:33083|A-2674-OUT,B-2304-RGB,C-2752-RGB;n:type:ShaderForge.SFN_Slider,id:2664,x:31019,y:32588,ptlb:Fresnel_Slider,ptin:_Fresnel_Slider,min:1,cur:3,max:5;n:type:ShaderForge.SFN_Multiply,id:2674,x:30231,y:33195|A-2304-RGB,B-2600-OUT;n:type:ShaderForge.SFN_Multiply,id:2685,x:30062,y:32328|A-187-RGB,B-2112-RGB;n:type:ShaderForge.SFN_Blend,id:2686,x:29870,y:32368,blmd:6,clmp:True|SRC-2113-OUT,DST-2685-OUT;n:type:ShaderForge.SFN_Color,id:2752,x:30170,y:33265,ptlb:Fresnel_Color,ptin:_Fresnel_Color,glob:False,c1:0.7279412,c2:0.3639706,c3:0.3639706,c4:1;n:type:ShaderForge.SFN_Slider,id:2763,x:30630,y:33335,ptlb:Emission Power,ptin:_EmissionPower,min:0,cur:0.2189441,max:10;n:type:ShaderForge.SFN_Cubemap,id:2779,x:30725,y:33173,ptlb:Cubemap,ptin:_Cubemap,cube:2f821dbbb5e173e468876ef2e4eaa490,pvfc:0;n:type:ShaderForge.SFN_Multiply,id:2780,x:30422,y:33184|A-2779-RGB,B-2763-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2792,x:30048,y:33015,ptlb:LW_Multiplier,ptin:_LW_Multiplier,glob:False,v1:3;n:type:ShaderForge.SFN_Slider,id:2793,x:30008,y:32910,ptlb:LightWrapping,ptin:_LightWrapping,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Multiply,id:2794,x:29801,y:32861|A-2793-OUT,B-2792-OUT;proporder:153-214-2112-2166-2292-2304-187-2612-2664-2752-2763-2779-2792-2793;pass:END;sub:END;*/

Shader "Shader Forge/Rock_Shader" {
    Properties {
        _Normal ("Normal", 2D) = "bump" {}
        _Specular ("Specular", 2D) = "white" {}
        _Diffuse_Color ("Diffuse_Color", Color) = (1,1,1,1)
        _Specularity ("Specularity", Range(0, 1)) = 0.07401214
        _SpecularColor ("Specular Color", Color) = (0.5,0.5,0.5,1)
        _GlossMap ("GlossMap", 2D) = "white" {}
        _Diffuse ("Diffuse", 2D) = "white" {}
        _GlossAmount ("GlossAmount", Float ) = 0.2
        _Fresnel_Slider ("Fresnel_Slider", Range(1, 5)) = 3
        _Fresnel_Color ("Fresnel_Color", Color) = (0.7279412,0.3639706,0.3639706,1)
        _EmissionPower ("Emission Power", Range(0, 10)) = 0.2189441
        _Cubemap ("Cubemap", Cube) = "_Skybox" {}
        _LW_Multiplier ("LW_Multiplier", Float ) = 3
        _LightWrapping ("LightWrapping", Range(0, 2)) = 1
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #ifndef LIGHTMAP_OFF
                // float4 unity_LightmapST;
                // sampler2D unity_Lightmap;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform float4 _Diffuse_Color;
            uniform float _Specularity;
            uniform float4 _SpecularColor;
            uniform sampler2D _GlossMap; uniform float4 _GlossMap_ST;
            uniform float _GlossAmount;
            uniform float _Fresnel_Slider;
            uniform float4 _Fresnel_Color;
            uniform float _EmissionPower;
            uniform samplerCUBE _Cubemap;
            uniform float _LW_Multiplier;
            uniform float _LightWrapping;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                #ifndef LIGHTMAP_OFF
                    float2 uvLM : TEXCOORD7;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                #ifndef LIGHTMAP_OFF
                    o.uvLM = v.texcoord1 * unity_LightmapST.xy + unity_LightmapST.zw;
                #endif
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_2815 = i.uv0;
                float3 normalLocal = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_2815.rg, _Normal))).rgb;
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                #ifndef LIGHTMAP_OFF
                    float4 lmtex = UNITY_SAMPLE_TEX2D(unity_Lightmap,i.uvLM);
                    #ifndef DIRLIGHTMAP_OFF
                        float3 lightmap = DecodeLightmap(lmtex);
                        float3 scalePerBasisVector = DecodeLightmap(UNITY_SAMPLE_TEX2D_SAMPLER(unity_LightmapInd,unity_Lightmap,i.uvLM));
                        UNITY_DIRBASIS
                        half3 normalInRnmBasis = saturate (mul (unity_DirBasis, normalLocal));
                        lightmap *= dot (normalInRnmBasis, scalePerBasisVector);
                    #else
                        float3 lightmap = DecodeLightmap(lmtex);
                    #endif
                #endif
                #ifndef LIGHTMAP_OFF
                    #ifdef DIRLIGHTMAP_OFF
                        float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                    #else
                        float3 lightDirection = normalize (scalePerBasisVector.x * unity_DirBasis[0] + scalePerBasisVector.y * unity_DirBasis[1] + scalePerBasisVector.z * unity_DirBasis[2]);
                        lightDirection = mul(lightDirection,tangentTransform); // Tangent to world
                    #endif
                #else
                    float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                #endif
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i)*2;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float node_2794 = (_LightWrapping*_LW_Multiplier);
                float3 w = float3(node_2794,node_2794,node_2794)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                #ifndef LIGHTMAP_OFF
                    float3 diffuse = lightmap.rgb;
                #else
                    float3 diffuse = forwardLight/(Pi*(dot(w,float3(0.3,0.59,0.11))+1)) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb*2;
                #endif
////// Emissive:
                float3 emissive = (texCUBE(_Cubemap,viewReflectDirection).rgb*_EmissionPower);
///////// Gloss:
                float4 node_2304 = tex2D(_GlossMap,TRANSFORM_TEX(node_2815.rg, _GlossMap));
                float gloss = saturate((node_2304.a*_GlossAmount));
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float node_2600 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel_Slider);
                float3 specularColor = saturate((_SpecularColor.rgb*saturate(( _Specularity > 0.5 ? (1.0-(1.0-2.0*(_Specularity-0.5))*(1.0-saturate((tex2D(_Specular,TRANSFORM_TEX(node_2815.rg, _Specular)).rgb+node_2600)))) : (2.0*_Specularity*saturate((tex2D(_Specular,TRANSFORM_TEX(node_2815.rg, _Specular)).rgb+node_2600))) ))));
                float specularMonochrome = dot(specularColor,float3(0.3,0.59,0.11));
                float HdotL = max(0.0,dot(halfDirection,lightDirection));
                float3 fresnelTerm = specularColor + ( 1.0 - specularColor ) * pow((1.0 - HdotL),5);
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float3 fresnelTermAmb = specularColor + ( 1.0 - specularColor ) * ( pow((1.0 - NdotV),5) / (4-3*gloss) );
                float alpha = 1.0 / ( sqrt( (Pi/4.0) * specPow + Pi/2.0 ) );
                float visTerm = ( NdotL * ( 1.0 - alpha ) + alpha ) * ( NdotV * ( 1.0 - alpha ) + alpha );
                visTerm = 1.0 / visTerm;
                float normTerm = (specPow + 8.0 ) / (8.0 * Pi);
                float3 specularAmb = ((node_2304.rgb*node_2600)*node_2304.rgb*_Fresnel_Color.rgb) * fresnelTermAmb;
                float3 specular = 1*NdotL * pow(max(0,dot(halfDirection,normalDirection)),specPow)*fresnelTerm*visTerm*normTerm + specularAmb;
                #ifndef LIGHTMAP_OFF
                    #ifndef DIRLIGHTMAP_OFF
                        specular *= lightmap;
                    #else
                        specular *= attenColor;
                    #endif
                #else
                    specular *= attenColor;
                #endif
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                diffuseLight *= 1-specularMonochrome;
                float4 node_187 = tex2D(_Diffuse,TRANSFORM_TEX(node_2815.rg, _Diffuse));
                finalColor += diffuseLight * saturate((1.0-(1.0-saturate((node_187.rgb*_Diffuse_Color.rgb)))*(1.0-(node_187.rgb*_Diffuse_Color.rgb))));
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #ifndef LIGHTMAP_OFF
                // float4 unity_LightmapST;
                // sampler2D unity_Lightmap;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform float4 _Diffuse_Color;
            uniform float _Specularity;
            uniform float4 _SpecularColor;
            uniform sampler2D _GlossMap; uniform float4 _GlossMap_ST;
            uniform float _GlossAmount;
            uniform float _Fresnel_Slider;
            uniform float _EmissionPower;
            uniform samplerCUBE _Cubemap;
            uniform float _LW_Multiplier;
            uniform float _LightWrapping;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
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
                float2 node_2816 = i.uv0;
                float3 normalLocal = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_2816.rg, _Normal))).rgb;
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i)*2;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float node_2794 = (_LightWrapping*_LW_Multiplier);
                float3 w = float3(node_2794,node_2794,node_2794)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 diffuse = forwardLight/(Pi*(dot(w,float3(0.3,0.59,0.11))+1)) * attenColor;
///////// Gloss:
                float4 node_2304 = tex2D(_GlossMap,TRANSFORM_TEX(node_2816.rg, _GlossMap));
                float gloss = saturate((node_2304.a*_GlossAmount));
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float node_2600 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel_Slider);
                float3 specularColor = saturate((_SpecularColor.rgb*saturate(( _Specularity > 0.5 ? (1.0-(1.0-2.0*(_Specularity-0.5))*(1.0-saturate((tex2D(_Specular,TRANSFORM_TEX(node_2816.rg, _Specular)).rgb+node_2600)))) : (2.0*_Specularity*saturate((tex2D(_Specular,TRANSFORM_TEX(node_2816.rg, _Specular)).rgb+node_2600))) ))));
                float specularMonochrome = dot(specularColor,float3(0.3,0.59,0.11));
                float HdotL = max(0.0,dot(halfDirection,lightDirection));
                float3 fresnelTerm = specularColor + ( 1.0 - specularColor ) * pow((1.0 - HdotL),5);
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float alpha = 1.0 / ( sqrt( (Pi/4.0) * specPow + Pi/2.0 ) );
                float visTerm = ( NdotL * ( 1.0 - alpha ) + alpha ) * ( NdotV * ( 1.0 - alpha ) + alpha );
                visTerm = 1.0 / visTerm;
                float normTerm = (specPow + 8.0 ) / (8.0 * Pi);
                float3 specular = attenColor*NdotL * pow(max(0,dot(halfDirection,normalDirection)),specPow)*fresnelTerm*visTerm*normTerm;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                diffuseLight *= 1-specularMonochrome;
                float4 node_187 = tex2D(_Diffuse,TRANSFORM_TEX(node_2816.rg, _Diffuse));
                finalColor += diffuseLight * saturate((1.0-(1.0-saturate((node_187.rgb*_Diffuse_Color.rgb)))*(1.0-(node_187.rgb*_Diffuse_Color.rgb))));
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
