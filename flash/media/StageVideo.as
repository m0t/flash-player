package flash.media
{
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.NetStream;
   
   [native(instance="StageVideoObject",methods="auto",cls="StageVideoClass",construct="native")]
   [API("667")]
   [Event(name="renderState",type="flash.events.StageVideoEvent")]
   public class StageVideo extends EventDispatcher
   {
       
      
      public function StageVideo()
      {
         super();
      }
      
      native public function attachNetStream(param1:NetStream) : void;
      
      [API("682")]
      native public function attachCamera(param1:Camera) : void;
      
      native public function get viewPort() : Rectangle;
      
      native public function set viewPort(param1:Rectangle) : void;
      
      native public function set pan(param1:Point) : void;
      
      native public function get pan() : Point;
      
      native public function set zoom(param1:Point) : void;
      
      native public function get zoom() : Point;
      
      native public function set depth(param1:int) : void;
      
      native public function get depth() : int;
      
      native public function get videoWidth() : int;
      
      native public function get videoHeight() : int;
      
      native public function get colorSpaces() : Vector.<String>;
      
      [API("688")]
      native public function attachAVStream(param1:AVStream) : void;
   }
}
