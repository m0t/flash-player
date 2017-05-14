package adobe.utils
{
   [native(methods="auto",cls="CustomActionsClass",construct="none")]
   public final class CustomActions
   {
       
      
      public function CustomActions()
      {
         super();
      }
      
      native public static function installActions(param1:String, param2:String) : void;
      
      native public static function uninstallActions(param1:String) : void;
      
      native public static function get actionsList() : Array;
      
      native public static function getActions(param1:String) : String;
   }
}
