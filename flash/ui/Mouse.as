package flash.ui
{
   [native(methods="auto",cls="MouseClass",construct="none",gc="exact")]
   public final class Mouse
   {
       
      
      public function Mouse()
      {
         super();
      }
      
      native public static function hide() : void;
      
      native public static function show() : void;
      
      [Version("10.1")]
      native public static function get supportsCursor() : Boolean;
      
      [Version("10")]
      native public static function get cursor() : String;
      
      [Version("10")]
      native public static function set cursor(param1:String) : void;
      
      [API("670")]
      native public static function registerCursor(param1:String, param2:MouseCursorData) : void;
      
      [API("670")]
      native public static function unregisterCursor(param1:String) : void;
      
      [API("670")]
      native public static function get supportsNativeCursor() : Boolean;
   }
}
