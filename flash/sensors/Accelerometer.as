package flash.sensors
{
   import flash.events.EventDispatcher;
   
   [native(instance="AccelerometerObject",methods="auto",cls="AccelerometerClass")]
   [Event(name="status",type="flash.events.StatusEvent")]
   [Event(name="update",type="flash.events.AccelerometerEvent")]
   [Version("10.1")]
   public class Accelerometer extends EventDispatcher
   {
       
      
      public function Accelerometer()
      {
         super();
      }
      
      native public static function get isSupported() : Boolean;
      
      native public function setRequestedUpdateInterval(param1:Number) : void;
      
      native public function get muted() : Boolean;
   }
}
