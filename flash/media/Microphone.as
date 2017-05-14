package flash.media
{
   import flash.events.EventDispatcher;
   
   [native(instance="MicrophoneObject",methods="auto",cls="MicrophoneClass",construct="check")]
   public final class Microphone extends EventDispatcher
   {
       
      
      public function Microphone()
      {
         super();
      }
      
      native public static function getMicrophone(param1:int = -1) : Microphone;
      
      native public static function get names() : Array;
      
      [Version("10.1")]
      native public static function get isSupported() : Boolean;
      
      [API("672")]
      native public static function getEnhancedMicrophone(param1:int = -1) : Microphone;
      
      native public function set gain(param1:Number) : void;
      
      native public function set rate(param1:int) : void;
      
      native public function get rate() : int;
      
      [Version("10")]
      native public function set codec(param1:String) : void;
      
      [Version("10")]
      native public function get codec() : String;
      
      [Version("10")]
      native public function get framesPerPacket() : int;
      
      [Version("10")]
      native public function set framesPerPacket(param1:int) : void;
      
      [Version("10")]
      native public function get encodeQuality() : int;
      
      [Version("10")]
      native public function set encodeQuality(param1:int) : void;
      
      [Version("10.1")]
      native public function get noiseSuppressionLevel() : int;
      
      [Version("10.1")]
      native public function set noiseSuppressionLevel(param1:int) : void;
      
      [Version("10.1")]
      native public function get enableVAD() : Boolean;
      
      [Version("10.1")]
      native public function set enableVAD(param1:Boolean) : void;
      
      native public function setSilenceLevel(param1:Number, param2:int = -1) : void;
      
      native public function setUseEchoSuppression(param1:Boolean) : void;
      
      native public function get activityLevel() : Number;
      
      native public function get gain() : Number;
      
      native public function get index() : int;
      
      native public function get muted() : Boolean;
      
      native public function get name() : String;
      
      native public function get silenceLevel() : Number;
      
      native public function get silenceTimeout() : int;
      
      native public function get useEchoSuppression() : Boolean;
      
      native public function setLoopBack(param1:Boolean = true) : void;
      
      native public function get soundTransform() : SoundTransform;
      
      native public function set soundTransform(param1:SoundTransform) : void;
      
      [API("672")]
      native public function get enhancedOptions() : MicrophoneEnhancedOptions;
      
      [API("672")]
      native public function set enhancedOptions(param1:MicrophoneEnhancedOptions) : void;
   }
}
