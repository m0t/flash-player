package flash.media
{
   import flash.events.EventDispatcher;
   
   [native(instance="SoundChannelObject",methods="auto",cls="SoundChannelClass",gc="exact")]
   [Event(name="soundComplete",type="flash.events.Event")]
   public final class SoundChannel extends EventDispatcher
   {
       
      
      public function SoundChannel()
      {
         super();
      }
      
      native public function get position() : Number;
      
      native public function get soundTransform() : SoundTransform;
      
      native public function set soundTransform(param1:SoundTransform) : void;
      
      native public function stop() : void;
      
      native public function get leftPeak() : Number;
      
      native public function get rightPeak() : Number;
   }
}
