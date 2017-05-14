package flash.net
{
   import flash.events.EventDispatcher;
   
   [native(instance="SharedObjectObject",methods="auto",cls="SharedObjectClass",construct="native")]
   [Event(name="sync",type="flash.events.SyncEvent")]
   [Event(name="netStatus",type="flash.events.NetStatusEvent")]
   [Event(name="asyncError",type="flash.events.AsyncErrorEvent")]
   public class SharedObject extends EventDispatcher
   {
      
      private static const kConnect:uint = 0;
      
      private static const kSend:uint = 1;
      
      private static const kFlush:uint = 2;
      
      private static const kClose:uint = 3;
      
      private static const kGetSize:uint = 4;
      
      private static const kSetFps:uint = 5;
      
      private static const kClear:uint = 6;
       
      
      public function SharedObject()
      {
         super();
      }
      
      [Inspectable(environment="none")]
      native public static function deleteAll(param1:String) : int;
      
      [Inspectable(environment="none")]
      native public static function getDiskUsage(param1:String) : int;
      
      native public static function getLocal(param1:String, param2:String = null, param3:Boolean = false) : SharedObject;
      
      native public static function getRemote(param1:String, param2:String = null, param3:Object = false, param4:Boolean = false) : SharedObject;
      
      native public static function get defaultObjectEncoding() : uint;
      
      native public static function set defaultObjectEncoding(param1:uint) : void;
      
      native private static function get preventBackupImpl() : Boolean;
      
      native private static function set preventBackupImpl(param1:Boolean) : void;
      
      [API("689")]
      public static function get preventBackup() : Boolean
      {
         return SharedObject.preventBackupImpl;
      }
      
      [API("689")]
      public static function set preventBackup(value:Boolean) : void
      {
         SharedObject.preventBackupImpl = value;
      }
      
      native public function get data() : Object;
      
      public function connect(myConnection:NetConnection, params:String = null) : void
      {
         if(!Boolean(this.invoke(kConnect,myConnection,params)))
         {
            Error.throwError(Error,2139);
         }
      }
      
      public function close() : void
      {
         this.invoke(kClose);
      }
      
      public function flush(minDiskSpace:int = 0) : String
      {
         var preventBackupCurrentlySet:Boolean = false;
         var preventBackupToBeSet:Boolean = SharedObject.preventBackupImpl;
         var result:Object = this.invoke(kFlush,minDiskSpace);
         if(result == true)
         {
            preventBackupCurrentlySet = SharedObject.preventBackupImpl;
            if(preventBackupCurrentlySet != preventBackupToBeSet)
            {
               SharedObject.preventBackupImpl = preventBackupToBeSet;
            }
            return SharedObjectFlushStatus.FLUSHED;
         }
         if(result == "pending")
         {
            return SharedObjectFlushStatus.PENDING;
         }
         Error.throwError(Error,2130);
         return null;
      }
      
      public function get size() : uint
      {
         return uint(this.invoke(kGetSize));
      }
      
      public function set fps(updatesPerSecond:Number) : void
      {
         this.invoke(kSetFps,updatesPerSecond);
      }
      
      public function send(... arguments) : void
      {
         this.invokeWithArgsArray(kSend,arguments);
      }
      
      public function clear() : void
      {
         this.invoke(kClear);
      }
      
      native public function get objectEncoding() : uint;
      
      native public function set objectEncoding(param1:uint) : void;
      
      native public function get client() : Object;
      
      native public function set client(param1:Object) : void;
      
      native public function setDirty(param1:String) : void;
      
      public function setProperty(propertyName:String, value:Object = null) : void
      {
         if(this.data[propertyName] != value)
         {
            this.data[propertyName] = value;
            this.setDirty(propertyName);
         }
      }
      
      native private function invoke(param1:uint, ... rest) : *;
      
      native private function invokeWithArgsArray(param1:uint, param2:Array) : *;
   }
}
