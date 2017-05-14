package flash.accessibility
{
   import flash.display.DisplayObject;
   
   [native(methods="auto",cls="AccessibilityClass",construct="none")]
   public final class Accessibility
   {
       
      
      public function Accessibility()
      {
         super();
      }
      
      native public static function get active() : Boolean;
      
      [Inspectable(environment="none")]
      native public static function sendEvent(param1:DisplayObject, param2:uint, param3:uint, param4:Boolean = false) : void;
      
      native public static function updateProperties() : void;
   }
}
