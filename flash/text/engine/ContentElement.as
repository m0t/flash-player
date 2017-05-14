package flash.text.engine
{
   import flash.events.EventDispatcher;
   
   [native(instance="ContentElementObject",methods="auto",cls="ContentElementClass")]
   [Version("10")]
   public class ContentElement
   {
      
      public static const GRAPHIC_ELEMENT:uint = 65007;
       
      
      public var userData;
      
      public function ContentElement(elementFormat:ElementFormat = null, eventMirror:EventDispatcher = null, textRotation:String = "rotate0")
      {
         super();
         if(getQualifiedClassName(this) == "flash.text.engine::ContentElement")
         {
            Error.throwError(ArgumentError,2012,"ContentElement");
         }
         this.elementFormat = elementFormat;
         this.eventMirror = eventMirror;
         this.textRotation = textRotation;
      }
      
      native public function get textBlock() : TextBlock;
      
      native public function get textBlockBeginIndex() : int;
      
      native public function get elementFormat() : ElementFormat;
      
      native public function set elementFormat(param1:ElementFormat) : void;
      
      native public function get eventMirror() : EventDispatcher;
      
      native public function set eventMirror(param1:EventDispatcher) : void;
      
      native public function get groupElement() : GroupElement;
      
      native public function get rawText() : String;
      
      native public function get text() : String;
      
      native public function get textRotation() : String;
      
      native public function set textRotation(param1:String) : void;
   }
}
