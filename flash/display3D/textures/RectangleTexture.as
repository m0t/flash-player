package flash.display3D.textures
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   [native(instance="TextureRectangle3DObject",methods="auto",cls="TextureRectangle3DClass",construct="native")]
   [API("690")]
   public final class RectangleTexture extends TextureBase
   {
       
      
      public function RectangleTexture()
      {
         super();
      }
      
      native public function uploadFromBitmapData(param1:BitmapData) : void;
      
      native public function uploadFromByteArray(param1:ByteArray, param2:uint) : void;
   }
}
