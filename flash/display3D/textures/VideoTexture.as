package flash.display3D.textures
{
   import flash.media.Camera;
   import flash.net.NetStream;
   
   [native(instance="TextureVideo3DObject",methods="auto",cls="TextureVideo3DClass",construct="native")]
   [Event(name="renderState",type="flash.events.TextureVideoEvent")]
   public final class VideoTexture extends TextureBase
   {
       
      
      public function VideoTexture()
      {
         super();
      }
      
      [API("706")]
      native public function attachNetStream(param1:NetStream) : void;
      
      [API("706")]
      native public function attachCamera(param1:Camera) : void;
      
      [API("706")]
      native public function get videoWidth() : int;
      
      [API("706")]
      native public function get videoHeight() : int;
   }
}
