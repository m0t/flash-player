package flash.text.engine
{
   [native(instance="TextJustifierObject",methods="auto",cls="TextJustifierClass")]
   [Version("10")]
   public class TextJustifier
   {
       
      
      public function TextJustifier(locale:String, lineJustification:String)
      {
         super();
         if(getQualifiedClassName(this) == "flash.text.engine::TextJustifier")
         {
            Error.throwError(ArgumentError,2012,"TextJustifier");
         }
         this.setLocale(locale);
         this.lineJustification = lineJustification;
      }
      
      public static function getJustifierForLocale(locale:String) : TextJustifier
      {
         if(locale == null || locale.length < 2)
         {
            Error.throwError(ArgumentError,2004,"previousLine");
         }
         var baseLocale:String = locale.substr(0,2);
         if(baseLocale == "zh" || baseLocale == "ja" || baseLocale == "ko")
         {
            return new EastAsianJustifier(locale);
         }
         return new SpaceJustifier(locale);
      }
      
      native public function get locale() : String;
      
      native private function setLocale(param1:String) : void;
      
      native public function get lineJustification() : String;
      
      native public function set lineJustification(param1:String) : void;
      
      public function clone() : TextJustifier
      {
         return null;
      }
   }
}
