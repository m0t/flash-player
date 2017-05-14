package flash.net
{
   import flash.events.EventDispatcher;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   [native(instance="SocketObject",methods="auto",cls="SocketClass")]
   [Event(name="securityError",type="flash.events.SecurityErrorEvent")]
   [Event(name="outputProgress",type="flash.events.OutputProgressEvent")]
   [Event(name="socketData",type="flash.events.ProgressEvent")]
   [Event(name="ioError",type="flash.events.IOErrorEvent")]
   [Event(name="connect",type="flash.events.Event")]
   [Event(name="close",type="flash.events.Event")]
   public class Socket extends EventDispatcher implements IDataInput, IDataOutput
   {
      
      private static const MIN_TIMEOUT = 250;
       
      
      private var _timeout:uint;
      
      private var _timeoutTimer:Timer;
      
      private var _timeoutEvent:SecurityErrorEvent;
      
      public function Socket(host:String = null, port:int = 0)
      {
         super();
         this._init();
         if(host != null)
         {
            this.connect(host,port);
         }
      }
      
      private function _init() : void
      {
         if(this._timeoutTimer)
         {
            return;
         }
         this._timeout = 20000;
         this._timeoutTimer = new Timer(this._timeout);
         this._timeoutTimer.addEventListener(TimerEvent.TIMER,this.onTimeout);
      }
      
      public function connect(host:String, port:int) : void
      {
         this._init();
         this._timeoutEvent = new SecurityErrorEvent(SecurityErrorEvent.SECURITY_ERROR,false,false,this.internalGetSecurityErrorMessage(host,port));
         this._timeoutTimer.reset();
         this._timeoutTimer.delay = this._timeout;
         this._timeoutTimer.start();
         this.internalConnect(host,port);
      }
      
      native private function internalGetSecurityErrorMessage(param1:String, param2:int) : String;
      
      [Version("10")]
      public function get timeout() : uint
      {
         return this._timeout;
      }
      
      [Version("10")]
      public function set timeout(value:uint) : void
      {
         if(value < MIN_TIMEOUT)
         {
            this._timeout = MIN_TIMEOUT;
         }
         else
         {
            this._timeout = value;
         }
      }
      
      private function onTimeout(event:TimerEvent) : void
      {
         this._timeoutTimer.stop();
         if(this.didFailureOccur())
         {
            dispatchEvent(this._timeoutEvent);
         }
         else if(!this.connected)
         {
            dispatchEvent(this._timeoutEvent);
         }
      }
      
      native private function internalConnect(param1:String, param2:int) : void;
      
      native private function didFailureOccur() : Boolean;
      
      native public function readBytes(param1:ByteArray, param2:uint = 0, param3:uint = 0) : void;
      
      native public function writeBytes(param1:ByteArray, param2:uint = 0, param3:uint = 0) : void;
      
      native public function writeBoolean(param1:Boolean) : void;
      
      native public function writeByte(param1:int) : void;
      
      native public function writeShort(param1:int) : void;
      
      native public function writeInt(param1:int) : void;
      
      native public function writeUnsignedInt(param1:uint) : void;
      
      native public function writeFloat(param1:Number) : void;
      
      native public function writeDouble(param1:Number) : void;
      
      native public function writeMultiByte(param1:String, param2:String) : void;
      
      native public function writeUTF(param1:String) : void;
      
      native public function writeUTFBytes(param1:String) : void;
      
      native public function readBoolean() : Boolean;
      
      native public function readByte() : int;
      
      native public function readUnsignedByte() : uint;
      
      native public function readShort() : int;
      
      native public function readUnsignedShort() : uint;
      
      native public function readInt() : int;
      
      native public function readUnsignedInt() : uint;
      
      native public function readFloat() : Number;
      
      native public function readDouble() : Number;
      
      native public function readMultiByte(param1:uint, param2:String) : String;
      
      native public function readUTF() : String;
      
      native public function readUTFBytes(param1:uint) : String;
      
      native public function get bytesAvailable() : uint;
      
      native public function get connected() : Boolean;
      
      public function close() : void
      {
         this._init();
         this._timeoutTimer.stop();
         this._timeoutTimer.reset();
         this.internalClose();
      }
      
      native private function internalClose() : void;
      
      native public function flush() : void;
      
      native public function writeObject(param1:*) : void;
      
      native public function readObject() : *;
      
      native public function get objectEncoding() : uint;
      
      native public function set objectEncoding(param1:uint) : void;
      
      native public function get endian() : String;
      
      native public function set endian(param1:String) : void;
      
      [API("674")]
      native public function get bytesPending() : uint;
   }
}
