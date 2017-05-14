package flash.trace
{
   [native(methods="auto",cls="TraceClass",construct="none")]
   public class Trace
   {
      
      public static const OFF:int = 0;
      
      public static const METHODS:int = 1;
      
      public static const METHODS_WITH_ARGS:int = 2;
      
      public static const METHODS_AND_LINES:int = 3;
      
      public static const METHODS_AND_LINES_WITH_ARGS:int = 4;
      
      public static const FILE = 1;
      
      public static const LISTENER = 2;
       
      
      public function Trace()
      {
         super();
      }
      
      native public static function setLevel(param1:int, param2:int = 2) : *;
      
      native public static function getLevel(param1:int = 2) : int;
      
      native public static function setListener(param1:Function) : *;
      
      native public static function getListener() : Function;
   }
}
