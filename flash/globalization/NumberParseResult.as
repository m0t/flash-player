package flash.globalization
{
   [native(instance="NumberParseResultObject",methods="auto",cls="NumberParseResultClass")]
   [Version("10.1")]
   public final class NumberParseResult
   {
       
      
      public function NumberParseResult(value:Number = NaN, startIndex:int = 2147483647, endIndex:int = 2147483647)
      {
         super();
         this.ctor(value,startIndex,endIndex);
      }
      
      native private function ctor(param1:Number, param2:int, param3:int) : void;
      
      native public function get value() : Number;
      
      native public function get startIndex() : int;
      
      native public function get endIndex() : int;
   }
}
