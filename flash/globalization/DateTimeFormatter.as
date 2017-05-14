package flash.globalization
{
   [native(instance="DateTimeFormatterObject",methods="auto",cls="DateTimeFormatterClass")]
   [Version("10.1")]
   public final class DateTimeFormatter
   {
       
      
      public function DateTimeFormatter(requestedLocaleIDName:String, dateStyle:String = "long", timeStyle:String = "long")
      {
         super();
         this.ctor(requestedLocaleIDName,dateStyle,timeStyle);
      }
      
      native public static function getAvailableLocaleIDNames() : Vector.<String>;
      
      native private function ctor(param1:String, param2:String, param3:String) : void;
      
      native public function setDateTimeStyles(param1:String, param2:String) : void;
      
      native public function getTimeStyle() : String;
      
      native public function getDateStyle() : String;
      
      native public function get lastOperationStatus() : String;
      
      native public function get requestedLocaleIDName() : String;
      
      native public function get actualLocaleIDName() : String;
      
      public function format(dateTime:Date) : String
      {
         return this.formatImplementation(dateTime,false);
      }
      
      native private function formatImplementation(param1:Date, param2:Boolean) : String;
      
      public function formatUTC(dateTime:Date) : String
      {
         return this.formatImplementation(dateTime,true);
      }
      
      native public function getMonthNames(param1:String = "full", param2:String = "standalone") : Vector.<String>;
      
      native public function getWeekdayNames(param1:String = "full", param2:String = "standalone") : Vector.<String>;
      
      native public function getFirstWeekday() : int;
      
      native public function getDateTimePattern() : String;
      
      native public function setDateTimePattern(param1:String) : void;
   }
}
