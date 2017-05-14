package flash.display
{
   [native(instance="BitmapObject",methods="auto",cls="BitmapClass",gc="exact")]
   public class Bitmap extends DisplayObject
   {
       
      
      public function Bitmap(bitmapData:BitmapData = null, pixelSnapping:String = "auto", smoothing:Boolean = false)
      {
         super();
         this.ctor(bitmapData,pixelSnapping,smoothing);
      }
      
      native private function ctor(param1:BitmapData, param2:String, param3:Boolean) : void;
      
      native public function get pixelSnapping() : String;
      
      native public function set pixelSnapping(param1:String) : void;
      
      native public function get smoothing() : Boolean;
      
      native public function set smoothing(param1:Boolean) : void;
      
      native public function get bitmapData() : BitmapData;
      
      native public function set bitmapData(param1:BitmapData) : void;
   }
}
