package adobe.utils
{
   [native(methods="auto",cls="XMLUIClass",construct="none")]
   public final class XMLUI
   {
       
      
      public function XMLUI()
      {
         super();
      }
      
      native public static function getProperty(param1:String) : String;
      
      native public static function setProperty(param1:String, param2:String) : void;
      
      native public static function accept() : void;
      
      native public static function cancel() : void;
   }
}
