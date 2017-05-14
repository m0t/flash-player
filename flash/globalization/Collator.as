package flash.globalization
{
   [native(instance="CollatorObject",methods="auto",cls="CollatorClass")]
   [Version("10.1")]
   public final class Collator
   {
       
      
      public function Collator(requestedLocaleIDName:String, initialMode:String = "sorting")
      {
         super();
         this.ctor(requestedLocaleIDName,initialMode);
      }
      
      native public static function getAvailableLocaleIDNames() : Vector.<String>;
      
      native private function ctor(param1:String, param2:String) : void;
      
      native public function get ignoreCase() : Boolean;
      
      native public function set ignoreCase(param1:Boolean) : void;
      
      native public function get ignoreDiacritics() : Boolean;
      
      native public function set ignoreDiacritics(param1:Boolean) : void;
      
      native public function get ignoreKanaType() : Boolean;
      
      native public function set ignoreKanaType(param1:Boolean) : void;
      
      native public function get ignoreSymbols() : Boolean;
      
      native public function set ignoreSymbols(param1:Boolean) : void;
      
      native public function get ignoreCharacterWidth() : Boolean;
      
      native public function set ignoreCharacterWidth(param1:Boolean) : void;
      
      native public function get numericComparison() : Boolean;
      
      native public function set numericComparison(param1:Boolean) : void;
      
      native public function compare(param1:String, param2:String) : int;
      
      native public function equals(param1:String, param2:String) : Boolean;
      
      native public function get lastOperationStatus() : String;
      
      native public function get actualLocaleIDName() : String;
      
      native public function get requestedLocaleIDName() : String;
   }
}
