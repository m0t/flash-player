package flash.display3D
{
   import flash.utils.ByteArray;
   
   [native(instance="IndexBuffer3DObject",methods="auto",cls="IndexBuffer3DClass",construct="native")]
   [API("674")]
   public final class IndexBuffer3D
   {
       
      
      public function IndexBuffer3D()
      {
         super();
      }
      
      native public function uploadFromVector(param1:Vector.<uint>, param2:int, param3:int) : void;
      
      native public function uploadFromByteArray(param1:ByteArray, param2:int, param3:int, param4:int) : void;
      
      native public function dispose() : void;
   }
}
