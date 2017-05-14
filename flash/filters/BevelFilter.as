package flash.filters
{
   [native(instance="BevelFilterObject",methods="auto",cls="BevelFilterClass")]
   public final class BevelFilter extends BitmapFilter
   {
       
      
      public function BevelFilter(distance:Number = 4.0, angle:Number = 45, highlightColor:uint = 16777215, highlightAlpha:Number = 1.0, shadowColor:uint = 0, shadowAlpha:Number = 1.0, blurX:Number = 4.0, blurY:Number = 4.0, strength:Number = 1, quality:int = 1, type:String = "inner", knockout:Boolean = false)
      {
         super();
         this.distance = distance;
         this.angle = angle;
         this.highlightColor = highlightColor;
         this.highlightAlpha = highlightAlpha;
         this.shadowColor = shadowColor;
         this.shadowAlpha = shadowAlpha;
         this.blurX = blurX;
         this.blurY = blurY;
         this.quality = quality;
         this.strength = strength;
         this.type = type;
         this.knockout = knockout;
      }
      
      native public function get distance() : Number;
      
      native public function set distance(param1:Number) : void;
      
      native public function get angle() : Number;
      
      native public function set angle(param1:Number) : void;
      
      native public function get highlightColor() : uint;
      
      native public function set highlightColor(param1:uint) : void;
      
      native public function get highlightAlpha() : Number;
      
      native public function set highlightAlpha(param1:Number) : void;
      
      native public function get shadowColor() : uint;
      
      native public function set shadowColor(param1:uint) : void;
      
      native public function get shadowAlpha() : Number;
      
      native public function set shadowAlpha(param1:Number) : void;
      
      native public function get blurX() : Number;
      
      native public function set blurX(param1:Number) : void;
      
      native public function get blurY() : Number;
      
      native public function set blurY(param1:Number) : void;
      
      native public function get knockout() : Boolean;
      
      native public function set knockout(param1:Boolean) : void;
      
      native public function get quality() : int;
      
      native public function set quality(param1:int) : void;
      
      native public function get strength() : Number;
      
      native public function set strength(param1:Number) : void;
      
      native public function get type() : String;
      
      native public function set type(param1:String) : void;
      
      override public function clone() : BitmapFilter
      {
         return new BevelFilter(this.distance,this.angle,this.highlightColor,this.highlightAlpha,this.shadowColor,this.shadowAlpha,this.blurX,this.blurY,this.strength,this.quality,this.type,this.knockout);
      }
   }
}
