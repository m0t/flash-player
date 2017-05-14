package flash.system
{
   [native(methods="auto",cls="FSCommandClass",construct="none")]
   final class FSCommand
   {
       
      
      function FSCommand()
      {
         super();
      }
      
      native public static function _fscommand(param1:String, param2:String) : void;
   }
}
