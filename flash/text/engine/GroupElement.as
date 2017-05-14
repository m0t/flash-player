package flash.text.engine
{
   import flash.events.EventDispatcher;
   
   [native(instance="GroupElementObject",methods="auto",cls="GroupElementClass")]
   [Version("10")]
   public final class GroupElement extends ContentElement
   {
       
      
      public function GroupElement(elements:Vector.<ContentElement> = null, elementFormat:ElementFormat = null, eventMirror:EventDispatcher = null, textRotation:String = "rotate0")
      {
         super(elementFormat,eventMirror,textRotation);
         this.setElements(elements);
      }
      
      native public function get elementCount() : int;
      
      native public function getElementAt(param1:int) : ContentElement;
      
      native public function setElements(param1:Vector.<ContentElement>) : void;
      
      native public function groupElements(param1:int, param2:int) : GroupElement;
      
      native public function ungroupElements(param1:int) : void;
      
      native public function mergeTextElements(param1:int, param2:int) : TextElement;
      
      native public function splitTextElement(param1:int, param2:int) : TextElement;
      
      native public function replaceElements(param1:int, param2:int, param3:Vector.<ContentElement>) : Vector.<ContentElement>;
      
      native public function getElementAtCharIndex(param1:int) : ContentElement;
      
      public function getElementIndex(element:ContentElement) : int
      {
         for(var i:int = 0; i < this.elementCount; i++)
         {
            if(element == this.getElementAt(i))
            {
               return i;
            }
         }
         return -1;
      }
   }
}
