package flash.display
{
   import flash.geom.Rectangle;
   import flash.media.SoundTransform;
   
   [native(instance="SpriteObject",methods="auto",cls="SpriteClass",gc="exact")]
   public class Sprite extends DisplayObjectContainer
   {
       
      
      public function Sprite()
      {
         super();
         this.constructChildren();
      }
      
      native public function get graphics() : Graphics;
      
      native public function get buttonMode() : Boolean;
      
      native public function set buttonMode(param1:Boolean) : void;
      
      native public function startDrag(param1:Boolean = false, param2:Rectangle = null) : void;
      
      native public function stopDrag() : void;
      
      [API("667")]
      native public function startTouchDrag(param1:int, param2:Boolean = false, param3:Rectangle = null) : void;
      
      [API("667")]
      native public function stopTouchDrag(param1:int) : void;
      
      native public function get dropTarget() : DisplayObject;
      
      native private function constructChildren() : void;
      
      native public function get hitArea() : Sprite;
      
      native public function set hitArea(param1:Sprite) : void;
      
      native public function get useHandCursor() : Boolean;
      
      native public function set useHandCursor(param1:Boolean) : void;
      
      native public function get soundTransform() : SoundTransform;
      
      native public function set soundTransform(param1:SoundTransform) : void;
   }
}
