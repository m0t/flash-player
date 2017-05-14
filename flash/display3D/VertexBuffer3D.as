package flash.display3D
{
   import flash.utils.ByteArray;
   
   [native(instance="VertexBuffer3DObject",methods="auto",cls="VertexBuffer3DClass",construct="native")]
   [API("674")]
   public class VertexBuffer3D
   {
       
      
      public function VertexBuffer3D()
      {
         super();
      }
      
      native public function uploadFromVector(param1:Vector.<Number>, param2:int, param3:int) : void;
      
      native public function uploadFromByteArray(param1:ByteArray, param2:int, param3:int, param4:int) : void;
      
      native public function dispose() : void;
   }
}
