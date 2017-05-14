package flash.display3D.textures
{
   import flash.events.EventDispatcher;
   
   [native(instance="TextureBase3DObject",methods="auto",cls="TextureBase3DClass")]
   [API("674")]
   public class TextureBase extends EventDispatcher
   {
       
      
      public function TextureBase()
      {
         super();
      }
      
      native public function dispose() : void;
   }
}
