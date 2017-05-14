package flash.sensors
{
   import flash.events.EventDispatcher;
   
   [API("668")]
   [native(instance="GeolocationObject",methods="auto",cls="GeolocationClass")]
   [Event(name="status",type="flash.events.StatusEvent")]
   [Event(name="update",type="flash.events.GeolocationEvent")]
   public class Geolocation extends EventDispatcher
   {
       
      
      public function Geolocation()
      {
         super();
      }
      
      native public static function get isSupported() : Boolean;
      
      native public function setRequestedUpdateInterval(param1:Number) : void;
      
      native public function get muted() : Boolean;
   }
}
