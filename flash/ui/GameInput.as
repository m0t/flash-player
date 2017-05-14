package flash.ui
{
   import flash.events.EventDispatcher;
   
   [native(instance="GameInputObject",methods="auto",cls="GameInputClass")]
   [API("688")]
   [Event(name="deviceUnusable",type="flash.events.GameInputEvent")]
   [Event(name="deviceRemoved",type="flash.events.GameInputEvent")]
   [Event(name="deviceAdded",type="flash.events.GameInputEvent")]
   public final class GameInput extends EventDispatcher
   {
       
      
      public function GameInput()
      {
         super();
      }
      
      native public static function getDeviceAt(param1:int) : GameInputDevice;
      
      native public static function get numDevices() : int;
      
      native public static function get isSupported() : Boolean;
   }
}
