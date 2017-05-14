package flash.filters
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   [native(instance="DisplacementMapFilterObject",methods="auto",cls="DisplacementMapFilterClass")]
   public final class DisplacementMapFilter extends BitmapFilter
   {
       
      
      public function DisplacementMapFilter(mapBitmap:BitmapData = null, mapPoint:Point = null, componentX:uint = 0, componentY:uint = 0, scaleX:Number = 0.0, scaleY:Number = 0.0, mode:String = "wrap", color:uint = 0, alpha:Number = 0.0)
      {
         super();
         if(mapBitmap != null)
         {
            this.mapBitmap = mapBitmap;
         }
         if(mapPoint != null)
         {
            this.mapPoint = mapPoint;
         }
         this.componentX = componentX;
         this.componentY = componentY;
         this.scaleX = scaleX;
         this.scaleY = scaleY;
         this.mode = mode;
         this.color = color;
         this.alpha = alpha;
      }
      
      native public function get mapBitmap() : BitmapData;
      
      native public function set mapBitmap(param1:BitmapData) : void;
      
      native public function get mapPoint() : Point;
      
      native public function set mapPoint(param1:Point) : void;
      
      native public function get componentX() : uint;
      
      native public function set componentX(param1:uint) : void;
      
      native public function get componentY() : uint;
      
      native public function set componentY(param1:uint) : void;
      
      native public function get scaleX() : Number;
      
      native public function set scaleX(param1:Number) : void;
      
      native public function get scaleY() : Number;
      
      native public function set scaleY(param1:Number) : void;
      
      native public function get mode() : String;
      
      native public function set mode(param1:String) : void;
      
      native public function get color() : uint;
      
      native public function set color(param1:uint) : void;
      
      native public function get alpha() : Number;
      
      native public function set alpha(param1:Number) : void;
      
      override public function clone() : BitmapFilter
      {
         return new DisplacementMapFilter(this.mapBitmap,this.mapPoint,this.componentX,this.componentY,this.scaleX,this.scaleY,this.mode,this.color,this.alpha);
      }
   }
}
