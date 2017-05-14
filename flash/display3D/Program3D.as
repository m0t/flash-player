package flash.display3D
{
   import flash.utils.ByteArray;
   
   [native(instance="Program3DObject",methods="auto",cls="Program3DClass",construct="native")]
   [API("674")]
   public final class Program3D
   {
       
      
      public function Program3D()
      {
         super();
      }
      
      native public function upload(param1:ByteArray, param2:ByteArray) : void;
      
      native public function dispose() : void;
   }
}
