package flash.net
{
   [native(methods="auto",cls="ObjectEncodingClass",construct="none",gc="exact")]
   public final class ObjectEncoding
   {
      
      public static const AMF0:uint = 0;
      
      public static const AMF3:uint = 3;
      
      public static const DEFAULT:uint = 3;
       
      
      public function ObjectEncoding()
      {
         super();
      }
      
      native public static function get dynamicPropertyWriter() : IDynamicPropertyWriter;
      
      native public static function set dynamicPropertyWriter(param1:IDynamicPropertyWriter) : void;
   }
}
