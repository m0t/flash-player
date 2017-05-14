package flash.utils
{
   [native(instance="ObjectInputObject",methods="auto",cls="ObjectInputClass",construct="native",gc="exact")]
   class ObjectInput implements IDataInput
   {
       
      
      function ObjectInput()
      {
         super();
      }
      
      native public function readBytes(param1:ByteArray, param2:uint = 0, param3:uint = 0) : void;
      
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
      
      native public function readObject() : *;
      
      native public function get objectEncoding() : uint;
      
      native public function set objectEncoding(param1:uint) : void;
      
      native public function get endian() : String;
      
      native public function set endian(param1:String) : void;
   }
}
