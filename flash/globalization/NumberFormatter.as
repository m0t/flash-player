package flash.globalization
{
   [native(instance="NumberFormatterObject",methods="auto",cls="NumberFormatterClass")]
   [Version("10.1")]
   public final class NumberFormatter
   {
       
      
      public function NumberFormatter(requestedLocaleIDName:String)
      {
         super();
         this.ctor(requestedLocaleIDName);
      }
      
      native public static function getAvailableLocaleIDNames() : Vector.<String>;
      
      native private function ctor(param1:String) : void;
      
      native public function get lastOperationStatus() : String;
      
      native public function get requestedLocaleIDName() : String;
      
      native public function get actualLocaleIDName() : String;
      
      native public function get fractionalDigits() : int;
      
      native public function set fractionalDigits(param1:int) : void;
      
      native public function get useGrouping() : Boolean;
      
      native public function set useGrouping(param1:Boolean) : void;
      
      native public function get groupingPattern() : String;
      
      native public function set groupingPattern(param1:String) : void;
      
      native public function get digitsType() : uint;
      
      native public function set digitsType(param1:uint) : void;
      
      native public function get decimalSeparator() : String;
      
      native public function set decimalSeparator(param1:String) : void;
      
      native public function get groupingSeparator() : String;
      
      native public function set groupingSeparator(param1:String) : void;
      
      native public function get negativeSymbol() : String;
      
      native public function set negativeSymbol(param1:String) : void;
      
      native public function get negativeNumberFormat() : uint;
      
      native public function set negativeNumberFormat(param1:uint) : void;
      
      native public function get leadingZero() : Boolean;
      
      native public function set leadingZero(param1:Boolean) : void;
      
      native public function get trailingZeros() : Boolean;
      
      native public function set trailingZeros(param1:Boolean) : void;
      
      native public function parse(param1:String) : NumberParseResult;
      
      native public function parseNumber(param1:String) : Number;
      
      native public function formatInt(param1:int) : String;
      
      native public function formatUint(param1:uint) : String;
      
      native public function formatNumber(param1:Number) : String;
   }
}
