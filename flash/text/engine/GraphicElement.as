package flash.text.engine
{
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   
   [native(instance="GraphicElementObject",methods="auto",cls="GraphicElementClass")]
   [Version("10")]
   public final class GraphicElement extends ContentElement
   {
       
      
      public function GraphicElement(graphic:DisplayObject = null, elementWidth:Number = 15.0, elementHeight:Number = 15.0, elementFormat:ElementFormat = null, eventMirror:EventDispatcher = null, textRotation:String = "rotate0")
      {
         super(elementFormat,eventMirror,textRotation);
         this.elementWidth = elementWidth;
         this.elementHeight = elementHeight;
         this.graphic = graphic;
      }
      
      native public function get graphic() : DisplayObject;
      
      native public function set graphic(param1:DisplayObject) : void;
      
      native public function get elementHeight() : Number;
      
      native public function set elementHeight(param1:Number) : void;
      
      native public function get elementWidth() : Number;
      
      native public function set elementWidth(param1:Number) : void;
   }
}
