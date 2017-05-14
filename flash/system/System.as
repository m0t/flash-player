package flash.system
{
   [native(methods="auto",cls="SystemClass",construct="none")]
   public final class System
   {
      
      private static var theIME:IME = null;
       
      
      public function System()
      {
         super();
      }
      
      native public static function get ime() : IME;
      
      native public static function setClipboard(param1:String) : void;
      
      public static function get totalMemory() : uint
      {
         return totalMemoryNumber as uint;
      }
      
      native public static function get totalMemoryNumber() : Number;
      
      native public static function get freeMemory() : Number;
      
      native public static function get privateMemory() : Number;
      
      [API("674")]
      native public static function get processCPUUsage() : Number;
      
      native public static function get useCodePage() : Boolean;
      
      native public static function set useCodePage(param1:Boolean) : void;
      
      [Inspectable(environment="none")]
      native public static function get vmVersion() : String;
      
      native public static function pause() : void;
      
      native public static function resume() : void;
      
      native public static function exit(param1:uint) : void;
      
      native public static function gc() : void;
      
      native public static function pauseForGCIfCollectionImminent(param1:Number = 0.75) : void;
      
      [API("667")]
      native public static function disposeXML(param1:XML) : void;
   }
}
