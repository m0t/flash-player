package flash.media
{
   import flash.events.EventDispatcher;
   
   [API("688")]
   [native(instance="AVStreamObject",methods="auto",cls="AVStreamClass")]
   [Event(name="drmStatus",type="flash.events.DRMStatusEvent")]
   [Event(name="drmError",type="flash.events.DRMErrorEvent")]
   [Event(name="avstatus",type="flash.events.AVStatusEvent")]
   public class AVStream extends EventDispatcher
   {
      
      public static const UNDEFINED:String = "undefined";
      
      public static const HARDWARE:String = "hardware";
      
      public static const SOFTWARE:String = "sofware";
       
      
      public function AVStream(source:AVSource)
      {
         super();
         this.ctor(source);
      }
      
      native private function ctor(param1:AVSource) : void;
      
      native public function dispose() : void;
      
      native public function set bufferTime(param1:Number) : void;
      
      native public function set initialBufferTime(param1:Number) : void;
      
      native public function set backBufferTime(param1:Number) : void;
      
      native public function get backBufferLength() : Number;
      
      native public function get droppedFrames() : int;
      
      native public function step(param1:int) : AVResult;
      
      native public function pause() : AVResult;
      
      native public function resume() : Boolean;
      
      native public function seek(param1:Number, param2:Boolean = true) : AVResult;
      
      native public function seekToLocalTime(param1:int, param2:Number) : AVResult;
      
      native public function seekToLivePoint() : AVResult;
      
      native public function play() : AVResult;
      
      native public function setPlaySpeed(param1:Number, param2:Number) : void;
      
      native public function fastForward(param1:Number) : AVResult;
      
      native public function rewind(param1:Number) : AVResult;
      
      native public function get playState() : AVPlayState;
      
      native public function get time() : Number;
      
      native public function get frameTime() : Number;
      
      native public function get currentFPS() : Number;
      
      native public function get bufferLength() : Number;
      
      native public function get volume() : Number;
      
      native public function set volume(param1:Number) : void;
      
      native public function get decoderType() : String;
      
      native public function get renderType() : String;
      
      native public function get useHardwareDecoder() : Boolean;
      
      native public function set useHardwareDecoder(param1:Boolean) : void;
      
      native public function set captionsEnabled(param1:Boolean) : void;
      
      native public function get captionsEnabled() : Boolean;
      
      native public function set captionStyle(param1:AVCaptionStyle) : void;
      
      native public function get clientLivePoint() : Number;
      
      native public function seekToKeyFrame(param1:Number, param2:Boolean = true) : AVResult;
   }
}
