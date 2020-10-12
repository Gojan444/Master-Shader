//Ubicacion y nombre
Shader "Custom/SolidColor"
{
//Propiedades del Shader
    Properties
    {
        //Propiedad de Color R, B, G, A
        _Color ("Main Color", Color) = (1, 1, 1, 1)
    }

//SubShader
    SubShader
    {
        //pass
        pass
        {
            //CG
            CGPROGRAM
            //Codigo CG aqui
            //pragma
            #pragma vertex vertexShader
            #pragma fragment fragmentShader

            uniform fixed4 _Color;

            //VERTEX INPUT
            struct vertexInput
            {
                //Guardara la posicion de los vertices en x, y, z, w
                fixed4 vertex : POSITION; 
            };

            //VERTEX OUTPUT
            struct vertexOutput
            {
                fixed4 position : SV_POSITION;
                fixed4 color : COLOR; 
            };
            //VERTEX SHADER
            vertexOutput vertexShader(vertexInput i)
            {
                vertexOutput o; 
                o.position = UnityObjectToClipPos(i.vertex);
                o.color =  _Color; 
                return o;
            }

            //FRAGMENT SHADER
            /*fixed4 fragmentShader (vertexOutput o) : SV_TARGET
            {
                return o.color;
            }*/ 
            struct pixelOutput 
            {
                fixed4 pixel : SV_TARGET; 
            };

            pixelOutput fragmentShader(vertexOutput o)
            {
                pixelOutput p; 
                p.pixel = o.color;
                return p; 
            }


            ENDCG
        }
    }
//Fallback
    Fallback "Mobile/VertexLit"
}