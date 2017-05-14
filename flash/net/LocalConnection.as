package flash.net
{
   import flash.events.EventDispatcher;
   
   [native(instance="LocalConnectionObject",methods="auto",cls="LocalConnectionClass",gc="exact")]
   [Event(name="status",type="flash.events.StatusEvent")]
   [Event(name="securityError",type="flash.events.SecurityErrorEvent")]
   [Event(name="asyncError",type="flash.events.AsyncErrorEvent")]
   public class LocalConnection extends EventDispatcher
   {
       
      
      public function LocalConnection()
      {
         super();
      }
      
      [API("667")]
      public static function get isSupported() : Boolean
      {
         return true;
      }
      
      native public function close() : void;
      
      native public function connect(param1:String) : void;
      
      native public function get domain() : String;
      
      native public function send(param1:String, param2:String, ... rest) : void;
      
      native public function get client() : Object;
      
      native public function set client(param1:Object) : void;
      
      native public function get isPerUser() : Boolean;
      
      native public function set isPerUser(param1:Boolean) : void;
      
      native public function allowDomain(... rest) : void;
      
      native public function allowInsecureDomain(... rest) : void;
   }
}
