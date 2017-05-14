package flash.display3D
{
   import flash.display.BitmapData;
   import flash.display3D.textures.CubeTexture;
   import flash.display3D.textures.RectangleTexture;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.display3D.textures.VideoTexture;
   import flash.events.EventDispatcher;
   import flash.geom.Matrix3D;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   
   [native(instance="Context3DObject",methods="auto",cls="Context3DClass",construct="native")]
   [API("674")]
   public final class Context3D extends EventDispatcher
   {
       
      
      public function Context3D()
      {
         super();
      }
      
      [API("706")]
      native public static function get supportsVideoTexture() : Boolean;
      
      native public function get driverInfo() : String;
      
      [API("712")]
      native public function get totalGPUMemory() : Number;
      
      native public function dispose(param1:Boolean = true) : void;
      
      native public function get enableErrorChecking() : Boolean;
      
      native public function set enableErrorChecking(param1:Boolean) : void;
      
      native public function configureBackBuffer(param1:int, param2:int, param3:int, param4:Boolean = true, param5:Boolean = false, param6:Boolean = false) : void;
      
      native public function clear(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0, param5:Number = 1.0, param6:uint = 0, param7:uint = 4.294967295E9) : void;
      
      native public function drawTriangles(param1:IndexBuffer3D, param2:int = 0, param3:int = -1) : void;
      
      native public function present() : void;
      
      native public function setProgram(param1:Program3D) : void;
      
      native public function setProgramConstantsFromVector(param1:String, param2:int, param3:Vector.<Number>, param4:int = -1) : void;
      
      native public function setProgramConstantsFromMatrix(param1:String, param2:int, param3:Matrix3D, param4:Boolean = false) : void;
      
      [API("676")]
      native public function setProgramConstantsFromByteArray(param1:String, param2:int, param3:int, param4:ByteArray, param5:uint) : void;
      
      native public function setVertexBufferAt(param1:int, param2:VertexBuffer3D, param3:int = 0, param4:String = "float4") : void;
      
      native public function setBlendFactors(param1:String, param2:String) : void;
      
      native public function setColorMask(param1:Boolean, param2:Boolean, param3:Boolean, param4:Boolean) : void;
      
      native public function setDepthTest(param1:Boolean, param2:String) : void;
      
      public function setTextureAt(sampler:int, texture:TextureBase) : void
      {
         if(texture == null)
         {
            this.setTextureInternal(sampler,null);
         }
         else if(texture is Texture)
         {
            this.setTextureInternal(sampler,texture as Texture);
         }
         else if(texture is CubeTexture)
         {
            this.setCubeTextureInternal(sampler,texture as CubeTexture);
         }
         else if(texture is RectangleTexture)
         {
            this.setRectangleTextureInternal(sampler,texture as RectangleTexture);
         }
         else if(texture is VideoTexture)
         {
            this.setVideoTextureInternal(sampler,texture as VideoTexture);
         }
      }
      
      public function setRenderToTexture(texture:TextureBase, enableDepthAndStencil:Boolean = false, antiAlias:int = 0, surfaceSelector:int = 0, colorOutputIndex:int = 0) : void
      {
         var targetType:uint = 0;
         if(texture is Texture)
         {
            targetType = 1;
         }
         else if(texture is CubeTexture)
         {
            targetType = 2;
         }
         else if(texture is RectangleTexture)
         {
            targetType = 3;
         }
         else if(texture != null)
         {
            throw new ArgumentError("texture argument not derived from TextureBase (can be Texture, CubeTexture, or if supported, RectangleTexture)");
         }
         this.setRenderToTextureInternal(texture,targetType,enableDepthAndStencil,antiAlias,surfaceSelector,colorOutputIndex);
      }
      
      native public function setRenderToBackBuffer() : void;
      
      native private function setRenderToTextureInternal(param1:TextureBase, param2:int, param3:Boolean, param4:int, param5:int, param6:int) : void;
      
      native public function setCulling(param1:String) : void;
      
      native public function setStencilActions(param1:String = "frontAndBack", param2:String = "always", param3:String = "keep", param4:String = "keep", param5:String = "keep") : void;
      
      native public function setStencilReferenceValue(param1:uint, param2:uint = 255, param3:uint = 255) : void;
      
      native public function setScissorRectangle(param1:Rectangle) : void;
      
      native public function createVertexBuffer(param1:int, param2:int, param3:String = "staticDraw") : VertexBuffer3D;
      
      native public function createIndexBuffer(param1:int, param2:String = "staticDraw") : IndexBuffer3D;
      
      native public function createTexture(param1:int, param2:int, param3:String, param4:Boolean, param5:int = 0) : Texture;
      
      native public function createCubeTexture(param1:int, param2:String, param3:Boolean, param4:int = 0) : CubeTexture;
      
      [API("690")]
      native public function createRectangleTexture(param1:int, param2:int, param3:String, param4:Boolean) : RectangleTexture;
      
      native public function createProgram() : Program3D;
      
      native public function drawToBitmapData(param1:BitmapData) : void;
      
      [API("686")]
      native public function setSamplerStateAt(param1:int, param2:String, param3:String, param4:String) : void;
      
      [API("692")]
      native public function get profile() : String;
      
      native private function setTextureInternal(param1:int, param2:Texture) : void;
      
      native private function setCubeTextureInternal(param1:int, param2:CubeTexture) : void;
      
      native private function setRectangleTextureInternal(param1:int, param2:RectangleTexture) : void;
      
      native private function setVideoTextureInternal(param1:int, param2:VideoTexture) : void;
      
      [API("700")]
      native public function get backBufferWidth() : int;
      
      [API("700")]
      native public function get backBufferHeight() : int;
      
      [API("700")]
      native public function get maxBackBufferWidth() : int;
      
      [API("700")]
      native public function set maxBackBufferWidth(param1:int) : void;
      
      [API("700")]
      native public function get maxBackBufferHeight() : int;
      
      [API("700")]
      native public function set maxBackBufferHeight(param1:int) : void;
      
      [API("706")]
      native public function createVideoTexture() : VideoTexture;
   }
}
