package flash.media
{
   import flash.utils.ByteArray;
   
   [native(instance="SoundMixerObject",methods="auto",cls="SoundMixerClass")]
   public final class SoundMixer
   {
       
      
      public function SoundMixer()
      {
         super();
      }
      
      native public static function stopAll() : void;
      
      native public static function computeSpectrum(param1:ByteArray, param2:Boolean = false, param3:int = 0) : void;
      
      native public static function get bufferTime() : int;
      
      native public static function set bufferTime(param1:int) : void;
      
      native public static function get soundTransform() : SoundTransform;
      
      native public static function set soundTransform(param1:SoundTransform) : void;
      
      native public static function areSoundsInaccessible() : Boolean;
      
      [API("675")]
      native public static function get audioPlaybackMode() : String;
      
      [API("675")]
      native public static function set audioPlaybackMode(param1:String) : void;
      
      [API("675")]
      native public static function get useSpeakerphoneForVoice() : Boolean;
      
      [API("675")]
      native public static function set useSpeakerphoneForVoice(param1:Boolean) : void;
   }
}
