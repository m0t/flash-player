package flash.text.engine
{
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   [native(instance="TextLineMirrorRegionObject",methods="auto",cls="TextLineMirrorRegionClass",construct="none")]
   [Version("10")]
   public final class TextLineMirrorRegion
   {
       
      
      public function TextLineMirrorRegion()
      {
         super();
      }
      
      native public function get textLine() : TextLine;
      
      native public function get nextRegion() : TextLineMirrorRegion;
      
      native public function get previousRegion() : TextLineMirrorRegion;
      
      native public function get mirror() : EventDispatcher;
      
      native public function get element() : ContentElement;
      
      native public function get bounds() : Rectangle;
   }
}
