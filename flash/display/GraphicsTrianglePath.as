package flash.display
{
   [Version("10")]
   public final class GraphicsTrianglePath implements IGraphicsPath, IGraphicsData
   {
       
      
      public var indices:Vector.<int>;
      
      public var vertices:Vector.<Number>;
      
      public var uvtData:Vector.<Number>;
      
      private var _culling:String;
      
      public function GraphicsTrianglePath(vertices:Vector.<Number> = null, indices:Vector.<int> = null, uvtData:Vector.<Number> = null, culling:String = "none")
      {
         super();
         this.vertices = vertices;
         this.indices = indices;
         this.uvtData = uvtData;
         this._culling = culling;
         if(culling != TriangleCulling.NONE && culling != TriangleCulling.POSITIVE && culling != TriangleCulling.NEGATIVE)
         {
            Error.throwError(ArgumentError,2008,"culling");
         }
      }
      
      public function get culling() : String
      {
         return this._culling;
      }
      
      public function set culling(value:String) : void
      {
         if(value != TriangleCulling.NONE && value != TriangleCulling.POSITIVE && value != TriangleCulling.NEGATIVE)
         {
            Error.throwError(ArgumentError,2008,"culling");
         }
         this._culling = value;
      }
   }
}
