package flash.text.engine
{
   [native(instance="TabStopObject",methods="auto",cls="TabStopClass")]
   [Version("10")]
   public final class TabStop
   {
       
      
      public function TabStop(alignment:String = "start", position:Number = 0.0, decimalAlignmentToken:String = "")
      {
         super();
         this.alignment = alignment;
         this.position = position;
         this.decimalAlignmentToken = decimalAlignmentToken;
      }
      
      native public function get alignment() : String;
      
      native public function set alignment(param1:String) : void;
      
      native public function get position() : Number;
      
      native public function set position(param1:Number) : void;
      
      native public function get decimalAlignmentToken() : String;
      
      native public function set decimalAlignmentToken(param1:String) : void;
   }
}
