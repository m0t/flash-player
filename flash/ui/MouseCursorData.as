package flash.ui
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   [native(instance="MouseCursorDataObject",methods="auto",cls="MouseCursorDataClass")]
   [API("670")]
   public final class MouseCursorData
   {
       
      
      public function MouseCursorData()
      {
         super();
      }
      
      native public function get data() : Vector.<BitmapData>;
      
      native public function set data(param1:Vector.<BitmapData>) : void;
      
      native public function get hotSpot() : Point;
      
      native public function set hotSpot(param1:Point) : void;
      
      native public function get frameRate() : Number;
      
      native public function set frameRate(param1:Number) : void;
   }
}
