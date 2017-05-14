package flash.filters
{
   [native(instance="BlurFilterObject",methods="auto",cls="BlurFilterClass")]
   public final class BlurFilter extends BitmapFilter
   {
       
      
      public function BlurFilter(blurX:Number = 4.0, blurY:Number = 4.0, quality:int = 1)
      {
         super();
         this.blurX = blurX;
         this.blurY = blurY;
         this.quality = quality;
      }
      
      native public function get blurX() : Number;
      
      native public function set blurX(param1:Number) : void;
      
      native public function get blurY() : Number;
      
      native public function set blurY(param1:Number) : void;
      
      native public function get quality() : int;
      
      native public function set quality(param1:int) : void;
      
      override public function clone() : BitmapFilter
      {
         return new BlurFilter(this.blurX,this.blurY,this.quality);
      }
   }
}
