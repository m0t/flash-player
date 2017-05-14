package flash.media
{
   import flash.display.DisplayObject;
   import flash.net.NetStream;
   
   [native(instance="VideoObject",methods="auto",cls="VideoClass")]
   public class Video extends DisplayObject
   {
       
      
      public function Video(width:int = 320, height:int = 240)
      {
         super();
         this.ctor(width,height);
      }
      
      native private function ctor(param1:int, param2:int) : void;
      
      native public function get deblocking() : int;
      
      native public function set deblocking(param1:int) : void;
      
      native public function get smoothing() : Boolean;
      
      native public function set smoothing(param1:Boolean) : void;
      
      native public function get videoWidth() : int;
      
      native public function get videoHeight() : int;
      
      native public function clear() : void;
      
      native public function attachNetStream(param1:NetStream) : void;
      
      native public function attachCamera(param1:Camera) : void;
   }
}
