package flash.system
{
   import flash.events.EventDispatcher;
   
   [native(instance="MessageChannelObject",methods="auto",cls="MessageChannelClass",construct="native",gc="exact")]
   [API("682")]
   [Event(name="channelState",type="flash.events.Event")]
   [Event(name="channelMessage",type="flash.events.Event")]
   public final class MessageChannel extends EventDispatcher
   {
       
      
      public function MessageChannel()
      {
         super();
      }
      
      native public function send(param1:*, param2:int = -1) : void;
      
      native public function get messageAvailable() : Boolean;
      
      native public function receive(param1:Boolean = false) : *;
      
      override public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         this.internalAddEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      override public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         this.internalRemoveEventListener(type,listener);
      }
      
      native public function close() : void;
      
      native public function get state() : String;
      
      override public function toString() : String
      {
         return "[object MessageChannel]";
      }
      
      native private function internalRemoveEventListener(param1:String, param2:Function, param3:Boolean = false) : void;
      
      native private function internalAddEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void;
   }
}
