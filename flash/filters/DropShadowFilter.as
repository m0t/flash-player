package flash.filters
{
   [native(instance="DropShadowFilterObject",methods="auto",cls="DropShadowFilterClass")]
   public final class DropShadowFilter extends BitmapFilter
   {
       
      
      public function DropShadowFilter(distance:Number = 4.0, angle:Number = 45, color:uint = 0, alpha:Number = 1.0, blurX:Number = 4.0, blurY:Number = 4.0, strength:Number = 1.0, quality:int = 1, inner:Boolean = false, knockout:Boolean = false, hideObject:Boolean = false)
      {
         super();
         this.distance = distance;
         this.angle = angle;
         this.color = color;
         this.alpha = alpha;
         this.blurX = blurX;
         this.blurY = blurY;
         this.quality = quality;
         this.strength = strength;
         this.inner = inner;
         this.knockout = knockout;
         this.hideObject = hideObject;
      }
      
      native public function get distance() : Number;
      
      native public function set distance(param1:Number) : void;
      
      native public function get angle() : Number;
      
      native public function set angle(param1:Number) : void;
      
      native public function get color() : uint;
      
      native public function set color(param1:uint) : void;
      
      native public function get alpha() : Number;
      
      native public function set alpha(param1:Number) : void;
      
      native public function get blurX() : Number;
      
      native public function set blurX(param1:Number) : void;
      
      native public function get blurY() : Number;
      
      native public function set blurY(param1:Number) : void;
      
      native public function get hideObject() : Boolean;
      
      native public function set hideObject(param1:Boolean) : void;
      
      native public function get inner() : Boolean;
      
      native public function set inner(param1:Boolean) : void;
      
      native public function get knockout() : Boolean;
      
      native public function set knockout(param1:Boolean) : void;
      
      native public function get quality() : int;
      
      native public function set quality(param1:int) : void;
      
      native public function get strength() : Number;
      
      native public function set strength(param1:Number) : void;
      
      override public function clone() : BitmapFilter
      {
         return new DropShadowFilter(this.distance,this.angle,this.color,this.alpha,this.blurX,this.blurY,this.strength,this.quality,this.inner,this.knockout,this.hideObject);
      }
   }
}
