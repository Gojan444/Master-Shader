//Ubicacion y nombre
Shader "Custom/SolidColor"
{
//Propiedades del Shader
    Properties
    {

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