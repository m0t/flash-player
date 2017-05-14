package flash.ui
{
   import flash.utils.ByteArray;
   
   [native(instance="GameInputDeviceObject",methods="auto",cls="GameInputDeviceClass",construct="native")]
   [API("688")]
   public final class GameInputDevice
   {
      
      public static const MAX_BUFFER_SIZE:int = 32000;
       
      
      public function GameInputDevice()
      {
         super();
      }
      
      native public function getControlAt(param1:int) : GameInputControl;
      
      native public function get numControls() : int;
      
      native public function startCachingSamples(param1:int, param2:Vector.<String>) : void;
      
      native public function get sampleInterval() : int;
      
      native public function set sampleInterval(param1:int) : void;
      
      native public function stopCachingSamples() : void;
      
      native public function getCachedSamples(param1:ByteArray, param2:Boolean = false) : int;
      
      native public function get enabled() : Boolean;
      
      native public function set enabled(param1:Boolean) : void;
      
      native public function get id() : String;
      
      native public function get name() : String;
   }
}
