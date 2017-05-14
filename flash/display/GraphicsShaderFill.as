package flash.display
{
   import flash.geom.Matrix;
   
   [Version("10")]
   public final class GraphicsShaderFill implements IGraphicsFill, IGraphicsData
   {
       
      
      public var shader:Shader;
      
      public var matrix:Matrix;
      
      public function GraphicsShaderFill(shader:Shader = null, matrix:Matrix = null)
      {
         super();
         this.shader = shader;
         this.matrix = matrix;
      }
   }
}
