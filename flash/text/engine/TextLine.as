package flash.text.engine
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   import flash.ui.ContextMenu;
   
   [native(instance="TextLineObject",methods="auto",cls="TextLineClass",construct="none")]
   [Version("10")]
   public final class TextLine extends DisplayObjectContainer
   {
      
      public static const MAX_LINE_WIDTH:int = 1000000;
       
      
      public var userData;
      
      public function TextLine()
      {
         super();
      }
      
      override public function set focusRect(focusRect:Object) : void
      {
         Error.throwError(IllegalOperationError,2181);
      }
      
      override public function set tabChildren(enable:Boolean) : void
      {
         Error.throwError(IllegalOperationError,2181);
      }
      
      override public function set tabEnabled(enabled:Boolean) : void
      {
         Error.throwError(IllegalOperationError,2181);
      }
      
      override public function set tabIndex(index:int) : void
      {
         Error.throwError(IllegalOperationError,2181);
      }
      
      native public function get textBlock() : TextBlock;
      
      native public function get hasGraphicElement() : Boolean;
      
      [Version("10.1")]
      native public function get hasTabs() : Boolean;
      
      native public function get nextLine() : TextLine;
      
      native public function get previousLine() : TextLine;
      
      native public function get ascent() : Number;
      
      native public function get descent() : Number;
      
      native public function get textHeight() : Number;
      
      native public function get textWidth() : Number;
      
      [API("670")]
      native public function get totalAscent() : Number;
      
      [API("670")]
      native public function get totalDescent() : Number;
      
      [API("670")]
      native public function get totalHeight() : Number;
      
      native public function get textBlockBeginIndex() : int;
      
      native public function get rawTextLength() : int;
      
      native public function get specifiedWidth() : Number;
      
      native public function get unjustifiedTextWidth() : Number;
      
      native public function get validity() : String;
      
      native public function set validity(param1:String) : void;
      
      native public function get atomCount() : int;
      
      native public function get mirrorRegions() : Vector.<TextLineMirrorRegion>;
      
      public function getMirrorRegion(mirror:EventDispatcher) : TextLineMirrorRegion
      {
         var region:TextLineMirrorRegion = null;
         var mr:Vector.<TextLineMirrorRegion> = this.mirrorRegions;
         for(var i:int = 0; i < mr.length; i++)
         {
            region = mr[i];
            if(region.mirror == mirror)
            {
               return region;
            }
         }
         return null;
      }
      
      [Deprecated("Now does nothing",since="Flash Player 10.1")]
      public function flushAtomData() : void
      {
      }
      
      native public function getAtomIndexAtPoint(param1:Number, param2:Number) : int;
      
      native public function getAtomIndexAtCharIndex(param1:int) : int;
      
      native public function getAtomBounds(param1:int) : Rectangle;
      
      native public function getAtomBidiLevel(param1:int) : int;
      
      native public function getAtomTextRotation(param1:int) : String;
      
      native public function getAtomTextBlockBeginIndex(param1:int) : int;
      
      native public function getAtomTextBlockEndIndex(param1:int) : int;
      
      native public function getAtomCenter(param1:int) : Number;
      
      native public function getAtomWordBoundaryOnLeft(param1:int) : Boolean;
      
      native public function getAtomGraphic(param1:int) : DisplayObject;
      
      native public function getBaselinePosition(param1:String) : Number;
      
      native public function dump() : String;
      
      [Exclude(kind="property",name="tabIndex")]
      [Exclude(kind="property",name="tabEnabled")]
      [Exclude(kind="property",name="tabChildren")]
      [Exclude(kind="property",name="focusRect")]
      [Exclude(kind="property",name="contextMenu")]
      override public function set contextMenu(value:ContextMenu) : void
      {
         Error.throwError(IllegalOperationError,2181);
      }
   }
}
