package flash.globalization
{
   [native(instance="StringToolsObject",methods="auto",cls="StringToolsClass")]
   [Version("10.1")]
   public final class StringTools
   {
       
      
      public function StringTools(requestedLocaleIDName:String)
      {
         super();
         this.ctor(requestedLocaleIDName);
      }
      
      native public static function getAvailableLocaleIDNames() : Vector.<String>;
      
      native private function ctor(param1:String) : void;
      
      native public function get lastOperationStatus() : String;
      
      native public function get requestedLocaleIDName() : String;
      
      native public function get actualLocaleIDName() : String;
      
      native public function toLowerCase(param1:String) : String;
      
      native public function toUpperCase(param1:String) : String;
   }
}
