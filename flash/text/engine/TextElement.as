package flash.text.engine
{
   import flash.events.EventDispatcher;
   
   [native(instance="TextElementObject",methods="auto",cls="TextElementClass")]
   [Version("10")]
   public final class TextElement extends ContentElement
   {
       
      
      public function TextElement(text:String = null, elementFormat:ElementFormat = null, eventMirror:EventDispatcher = null, textRotation:String = "rotate0")
      {
         super(elementFormat,eventMirror,textRotation);
         this.text = text;
      }
      
      native public function set text(param1:String) : void;
      
      native public function replaceText(param1:int, param2:int, param3:String) : void;
   }
}
