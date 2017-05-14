package flash.utils
{
   [native(instance="ByteArrayObject",methods="auto",cls="ByteArrayClass",gc="exact")]
   public class ByteArray implements IDataInput2, IDataOutput2
   {
      
      private static var _defaultObjectEncoding:uint;
      
      {
         prototype.toJSON = function(k:String):*
         {
            return "ByteArray";
         };
         _dontEnumPrototype(prototype);
      }
      
      public function ByteArray()
      {
         super();
      }
      
      native public static function get defaultObjectEncoding() : uint;
      
      native public static function set defaultObjectEncoding(param1:uint) : void;
      
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
      
      native public function get length() : uint;
      
      native public function set length(param1:uint) : void;
      
      native public function writeObject(param1:*) : void;
      
      native public function readObject() : *;
      
      [API("662")]
      public function deflate() : void
      {
         this._compress("deflate");
      }
      
      native private function _compress(param1:String) : void;
      
      public function compress(algorithm:String = "zlib") : void
      {
         this._compress(algorithm);
      }
      
      [API("662")]
      public function inflate() : void
      {
         this._uncompress("deflate");
      }
      
      native private function _uncompress(param1:String) : void;
      
      public function uncompress(algorithm:String = "zlib") : void
      {
         this._uncompress(algorithm);
      }
      
      public function toString() : String
      {
         return this._toString();
      }
      
      native private function _toString() : String;
      
      native public function get bytesAvailable() : uint;
      
      native public function get position() : uint;
      
      native public function set position(param1:uint) : void;
      
      native public function get objectEncoding() : uint;
      
      native public function set objectEncoding(param1:uint) : void;
      
      native public function get endian() : String;
      
      native public function set endian(param1:String) : void;
      
      [API("662")]
      native public function clear() : void;
      
      [API("682")]
      native public function atomicCompareAndSwapIntAt(param1:int, param2:int, param3:int) : int;
      
      [API("682")]
      native public function atomicCompareAndSwapLength(param1:int, param2:int) : int;
      
      [API("682")]
      native public function get shareable() : Boolean;
      
      [API("682")]
      native public function set shareable(param1:Boolean) : void;
   }
}
