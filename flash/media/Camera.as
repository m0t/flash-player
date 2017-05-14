package flash.media
{
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   
   [native(instance="CameraObject",methods="auto",cls="CameraClass",construct="check")]
   [Event(name="videoFrame",type="flash.events.Event")]
   [Event(name="status",type="flash.events.StatusEvent")]
   [Event(name="activity",type="flash.events.ActivityEvent")]
   public final class Camera extends EventDispatcher
   {
       
      
      public function Camera()
      {
         super();
      }
      
      native static function _scanHardware() : void;
      
      native public static function get names() : Array;
      
      [Version("10.1")]
      native public static function get isSupported() : Boolean;
      
      native public static function getCamera(param1:String = null) : Camera;
      
      native public function get activityLevel() : Number;
      
      native public function get bandwidth() : int;
      
      native public function get currentFPS() : Number;
      
      native public function get fps() : Number;
      
      native public function get height() : int;
      
      native public function get index() : int;
      
      native public function get keyFrameInterval() : int;
      
      native public function get loopback() : Boolean;
      
      native public function get motionLevel() : int;
      
      native public function get motionTimeout() : int;
      
      native public function get muted() : Boolean;
      
      native public function get name() : String;
      
      [API("675")]
      native public function get position() : String;
      
      native public function get quality() : int;
      
      native public function get width() : int;
      
      [Inspectable(environment="none")]
      native public function setCursor(param1:Boolean) : void;
      
      native public function setKeyFrameInterval(param1:int) : void;
      
      native public function setLoopback(param1:Boolean = false) : void;
      
      native public function setMode(param1:int, param2:int, param3:Number, param4:Boolean = true) : void;
      
      native public function setMotionLevel(param1:int, param2:int = 2000) : void;
      
      native public function setQuality(param1:int, param2:int) : void;
      
      [API("682")]
      native public function drawToBitmapData(param1:BitmapData) : void;
      
      [API("682")]
      native public function copyToByteArray(param1:Rectangle, param2:ByteArray) : void;
      
      [API("682")]
      native public function copyToVector(param1:Rectangle, param2:Vector.<uint>) : void;
   }
}
