package flash.utils
{
   [native(instance="ObjectOutputObject",methods="auto",cls="ObjectOutputClass",construct="native",gc="exact")]
   class ObjectOutput implements IDataOutput
   {
       
      
      function ObjectOutput()
      {
         super();
      }
      
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
      
      native public function writeObject(param1:*) : void;
      
      native public function get objectEncoding() : uint;
      
      native public function set objectEncoding(param1:uint) : void;
      
      native public function get endian() : String;
      
      native public function set endian(param1:String) : void;
   }
}
