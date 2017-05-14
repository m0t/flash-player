package flash.system
{
   import flash.events.EventDispatcher;
   
   [native(instance="IMEObject",methods="auto",cls="IMEClass",construct="native")]
   [Event(name="imeComposition",type="flash.events.IMEEvent")]
   public final class IME extends EventDispatcher
   {
       
      
      public function IME()
      {
         super();
      }
      
      native public static function get enabled() : Boolean;
      
      native public static function set enabled(param1:Boolean) : void;
      
      native public static function get conversionMode() : String;
      
      native public static function set conversionMode(param1:String) : void;
      
      native public static function setCompositionString(param1:String) : void;
      
      native public static function doConversion() : void;
      
      native public static function compositionSelectionChanged(param1:int, param2:int) : void;
      
      native public static function compositionAbandoned() : void;
      
      [Version("10.1")]
      public static function get isSupported() : Boolean
      {
         return _checkSupported();
      }
      
      native private static function _checkSupported() : Boolean;
   }
}
