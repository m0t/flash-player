package flash.display
{
   import flash.utils.ByteArray;
   
   [native(instance="ShaderDataObject",methods="auto",cls="ShaderDataClass")]
   [Version("10")]
   public final dynamic class ShaderData
   {
       
      
      public function ShaderData(byteCode:ByteArray)
      {
         super();
         this._setByteCode(byteCode);
      }
      
      native private function _setByteCode(param1:ByteArray) : void;
   }
}
