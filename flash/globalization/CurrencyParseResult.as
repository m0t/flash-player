package flash.globalization
{
   [native(instance="CurrencyParseResultObject",methods="auto",cls="CurrencyParseResultClass")]
   [Version("10.1")]
   public final class CurrencyParseResult
   {
       
      
      public function CurrencyParseResult(value:Number = NaN, symbol:String = "")
      {
         super();
         this.ctor(value,symbol);
      }
      
      native private function ctor(param1:Number, param2:String) : void;
      
      native public function get value() : Number;
      
      native public function get currencyString() : String;
   }
}
