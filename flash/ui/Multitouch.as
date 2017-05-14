package flash.ui
{
   [native(methods="auto",cls="MultitouchClass",construct="none")]
   [Version("10.1")]
   public final class Multitouch
   {
       
      
      public function Multitouch()
      {
         super();
      }
      
      native public static function get inputMode() : String;
      
      native public static function set inputMode(param1:String) : void;
      
      native public static function get supportsTouchEvents() : Boolean;
      
      native public static function get supportsGestureEvents() : Boolean;
      
      native public static function get supportedGestures() : Vector.<String>;
      
      native public static function get maxTouchPoints() : int;
      
      [API("675")]
      native public static function get mapTouchToMouse() : Boolean;
      
      [API("675")]
      native public static function set mapTouchToMouse(param1:Boolean) : void;
   }
}
