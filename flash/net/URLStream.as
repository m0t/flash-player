package flash.net
{
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   [native(instance="URLStreamObject",methods="auto",cls="URLStreamClass")]
   [Event(name="progress",type="flash.events.ProgressEvent")]
   [Event(name="open",type="flash.events.Event")]
   [Event(name="ioError",type="flash.events.IOErrorEvent")]
   [Event(name="httpResponseStatus",type="flash.events.HTTPStatusEvent")]
   [Event(name="httpStatus",type="flash.events.HTTPStatusEvent")]
   [Event(name="securityError",type="flash.events.SecurityErrorEvent")]
   [Event(name="complete",type="flash.events.Event")]
   public class URLStream extends EventDispatcher implements IDataInput
   {
       
      
      public function URLStream()
      {
         super();
      }
      
      native public function load(param1:URLRequest) : void;
      
      native public function readBytes(param1:ByteArray, param2:uint = 0, param3:uint = 0) : void;
      
      native public function readBoolean() : Boolean;
      
      native public function readByte() : int;
      
      native public function readUnsignedByte() : uint;
      
      native public function readShort() : int;
      
      native public function readUnsignedShort() : uint;
      
      native public function readUnsignedInt() : uint;
      
      native public function readInt() : int;
      
      native public function readFloat() : Number;
      
      native public function readDouble() : Number;
      
      native public function readMultiByte(param1:uint, param2:String) : String;
      
      native public function readUTF() : String;
      
      native public function readUTFBytes(param1:uint) : String;
      
      native public function get connected() : Boolean;
      
      native public function get bytesAvailable() : uint;
      
      native public function close() : void;
      
      native public function readObject() : *;
      
      native public function get objectEncoding() : uint;
      
      native public function set objectEncoding(param1:uint) : void;
      
      native public function get endian() : String;
      
      native public function set endian(param1:String) : void;
      
      native public function get diskCacheEnabled() : Boolean;
      
      native public function get position() : Number;
      
      native public function set position(param1:Number) : void;
      
      native public function get length() : Number;
      
      native public function stop() : void;
   }
}
