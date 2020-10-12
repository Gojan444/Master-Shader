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
            ENDCG
        }
    }
//Fallback
    Fallback "Mobile/VertexLit"
}