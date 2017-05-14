package flash.text.engine
{
   [native(instance="EastAsianJustifierObject",methods="auto",cls="EastAsianJustifierClass")]
   [Version("10")]
   public final class EastAsianJustifier extends TextJustifier
   {
       
      
      public function EastAsianJustifier(locale:String = "ja", lineJustification:String = "allButLast", justificationStyle:String = "pushInKinsoku")
      {
         super(locale,lineJustification);
         this.justificationStyle = justificationStyle;
      }
      
      native public function get justificationStyle() : String;
      
      native public function set justificationStyle(param1:String) : void;
      
      [API("674")]
      native public function get composeTrailingIdeographicSpaces() : Boolean;
      
      [API("674")]
      native public function set composeTrailingIdeographicSpaces(param1:Boolean) : void;
      
      override public function clone() : TextJustifier
      {
         var eaj:EastAsianJustifier = new EastAsianJustifier(this.locale,this.lineJustification,this.justificationStyle);
         eaj.composeTrailingIdeographicSpaces = this.composeTrailingIdeographicSpaces;
         return eaj;
      }
   }
}
