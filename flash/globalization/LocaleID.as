package flash.globalization
{
   [native(instance="LocaleIDObject",methods="auto",cls="LocaleIDClass")]
   [Version("10.1")]
   public final class LocaleID
   {
      
      public static const DEFAULT:String = "i-default";
       
      
      public function LocaleID(name:String)
      {
         super();
         this.ctor(name);
      }
      
      native public static function determinePreferredLocales(param1:Vector.<String>, param2:Vector.<String>, param3:String = "userinterface") : Vector.<String>;
      
      native private function ctor(param1:String) : void;
      
      native public function getLanguage() : String;
      
      native public function getRegion() : String;
      
      native public function getScript() : String;
      
      native public function getVariant() : String;
      
      native public function get name() : String;
      
      native public function getKeysAndValues() : Object;
      
      native public function get lastOperationStatus() : String;
      
      native public function isRightToLeft() : Boolean;
   }
}
