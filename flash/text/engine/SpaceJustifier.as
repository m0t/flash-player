package flash.text.engine
{
   [native(instance="SpaceJustifierObject",methods="auto",cls="SpaceJustifierClass")]
   [Version("10")]
   public final class SpaceJustifier extends TextJustifier
   {
       
      
      public function SpaceJustifier(locale:String = "en", lineJustification:String = "unjustified", letterSpacing:Boolean = false)
      {
         super(locale,lineJustification);
         this.letterSpacing = letterSpacing;
      }
      
      native public function get letterSpacing() : Boolean;
      
      native public function set letterSpacing(param1:Boolean) : void;
      
      [Version("10.1")]
      native public function get minimumSpacing() : Number;
      
      [Version("10.1")]
      native public function set minimumSpacing(param1:Number) : void;
      
      [Version("10.1")]
      native public function get optimumSpacing() : Number;
      
      [Version("10.1")]
      native public function set optimumSpacing(param1:Number) : void;
      
      [Version("10.1")]
      native public function get maximumSpacing() : Number;
      
      [Version("10.1")]
      native public function set maximumSpacing(param1:Number) : void;
      
      override public function clone() : TextJustifier
      {
         var sp:SpaceJustifier = new SpaceJustifier(this.locale,this.lineJustification,this.letterSpacing);
         sp.cloneSpacing(this);
         return sp;
      }
      
      native private function cloneSpacing(param1:SpaceJustifier) : void;
   }
}
