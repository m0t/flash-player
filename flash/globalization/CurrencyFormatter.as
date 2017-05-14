package flash.globalization
{
   [native(instance="CurrencyFormatterObject",methods="auto",cls="CurrencyFormatterClass")]
   [Version("10.1")]
   public final class CurrencyFormatter
   {
       
      
      public function CurrencyFormatter(requestedLocaleIDName:String)
      {
         super();
         this.ctor(requestedLocaleIDName);
      }
      
      native public static function getAvailableLocaleIDNames() : Vector.<String>;
      
      native private function ctor(param1:String) : void;
      
      native public function get currencyISOCode() : String;
      
      native public function get currencySymbol() : String;
      
      native public function setCurrency(param1:String, param2:String) : void;
      
      public function format(value:Number, withCurrencySymbol:Boolean = false) : String
      {
         return this.formatImplementation(value,withCurrencySymbol);
      }
      
      native private function formatImplementation(param1:Number, param2:Boolean) : String;
      
      native public function formattingWithCurrencySymbolIsSafe(param1:String) : Boolean;
      
      native public function parse(param1:String) : CurrencyParseResult;
      
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
      
      native public function get negativeCurrencyFormat() : uint;
      
      native public function set negativeCurrencyFormat(param1:uint) : void;
      
      native public function get positiveCurrencyFormat() : uint;
      
      native public function set positiveCurrencyFormat(param1:uint) : void;
      
      native public function get leadingZero() : Boolean;
      
      native public function set leadingZero(param1:Boolean) : void;
      
      native public function get trailingZeros() : Boolean;
      
      native public function set trailingZeros(param1:Boolean) : void;
   }
}
