package flash.system
{
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   [native(instance="WorkerObject",methods="auto",cls="WorkerClass",construct="native")]
   [API("682")]
   [Event(name="workerState",type="flash.events.Event")]
   public final class Worker extends EventDispatcher
   {
      
      private static var _current:Worker;
       
      
      private var _byteCode:ByteArray;
      
      public function Worker()
      {
         super();
      }
      
      native public static function get isSupported() : Boolean;
      
      public static function get current() : Worker
      {
         return _current;
      }
      
      native public function createMessageChannel(param1:Worker) : MessageChannel;
      
      native public function start() : void;
      
      public function setSharedProperty(key:String, value:*) : void
      {
         this.internalSetSharedProperty(key,value);
      }
      
      native private function internalSetSharedProperty(param1:String, param2:*) : void;
      
      public function getSharedProperty(key:String) : *
      {
         return this.internalGetSharedProperty(key);
      }
      
      native private function internalGetSharedProperty(param1:String) : *;
      
      native public function get isPrimordial() : Boolean;
      
      public function get state() : String
      {
         return this.internalGetState();
      }
      
      native private function internalGetState() : String;
      
      override public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         this.internalAddEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      native private function internalAddEventListener(param1:String, param2:Function, param3:Boolean, param4:int, param5:Boolean) : void;
      
      override public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         this.internalRemoveEventListener(type,listener,useCapture);
      }
      
      native private function internalRemoveEventListener(param1:String, param2:Function, param3:Boolean) : void;
      
      native public function terminate() : Boolean;
   }
}
