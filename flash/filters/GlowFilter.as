package flash.filters
{
   [native(instance="GlowFilterObject",methods="auto",cls="GlowFilterClass")]
   public final class GlowFilter extends BitmapFilter
   {
       
      
      public function GlowFilter(color:uint = 16711680, alpha:Number = 1.0, blurX:Number = 6.0, blurY:Number = 6.0, strength:Number = 2, quality:int = 1, inner:Boolean = false, knockout:Boolean = false)
      {
         super();
         this.color = color;
         this.alpha = alpha;
         this.blurX = blurX;
         this.blurY = blurY;
         this.quality = quality;
         this.strength = strength;
         this.inner = inner;
         this.knockout = knockout;
      }
      
      native public function get color() : uint;
      
      native public function set color(param1:uint) : void;
      
      native public function get alpha() : Number;
      
      native public function set alpha(param1:Number) : void;
      
      native public function get blurX() : Number;
      
      native public function set blurX(param1:Number) : void;
      
      native public function get blurY() : Number;
      
      native public function set blurY(param1:Number) : void;
      
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
         return new GlowFilter(this.color,this.alpha,this.blurX,this.blurY,this.strength,this.quality,this.inner,this.knockout);
      }
   }
}
