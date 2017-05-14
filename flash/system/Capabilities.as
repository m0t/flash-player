package flash.system
{
   [native(methods="auto",cls="CapabilitiesClass",construct="none",gc="exact")]
   public final class Capabilities
   {
       
      
      public function Capabilities()
      {
         super();
      }
      
      native public static function get isEmbeddedInAcrobat() : Boolean;
      
      native public static function get hasEmbeddedVideo() : Boolean;
      
      native public static function get hasAudio() : Boolean;
      
      native public static function get avHardwareDisable() : Boolean;
      
      native public static function get hasAccessibility() : Boolean;
      
      native public static function get hasAudioEncoder() : Boolean;
      
      native public static function get hasMP3() : Boolean;
      
      native public static function get hasPrinting() : Boolean;
      
      native public static function get hasScreenBroadcast() : Boolean;
      
      native public static function get hasScreenPlayback() : Boolean;
      
      native public static function get hasStreamingAudio() : Boolean;
      
      native public static function get hasStreamingVideo() : Boolean;
      
      native public static function get hasVideoEncoder() : Boolean;
      
      native public static function get isDebugger() : Boolean;
      
      native public static function get localFileReadDisable() : Boolean;
      
      native public static function get language() : String;
      
      native public static function get manufacturer() : String;
      
      native public static function get os() : String;
      
      native public static function get cpuArchitecture() : String;
      
      native public static function get playerType() : String;
      
      native public static function get serverString() : String;
      
      native public static function get version() : String;
      
      native public static function get screenColor() : String;
      
      native public static function get pixelAspectRatio() : Number;
      
      native public static function get screenDPI() : Number;
      
      native public static function get screenResolutionX() : Number;
      
      native public static function get screenResolutionY() : Number;
      
      [Version("10.1")]
      native public static function get touchscreenType() : String;
      
      native public static function get hasIME() : Boolean;
      
      native public static function get hasTLS() : Boolean;
      
      [Version("10")]
      native public static function get maxLevelIDC() : String;
      
      [Version("10.0.32")]
      native public static function get supports32BitProcesses() : Boolean;
      
      [Version("10.0.32")]
      native public static function get supports64BitProcesses() : Boolean;
      
      native public static function get _internal() : uint;
      
      [API("674")]
      native public static function hasMultiChannelAudio(param1:String) : Boolean;
   }
}
