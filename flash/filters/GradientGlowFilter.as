package flash.filters
{
   [native(instance="GradientGlowFilterObject",methods="auto",cls="GradientGlowFilterClass")]
   public final class GradientGlowFilter extends BitmapFilter
   {
       
      
      public function GradientGlowFilter(distance:Number = 4.0, angle:Number = 45, colors:Array = null, alphas:Array = null, ratios:Array = null, blurX:Number = 4.0, blurY:Number = 4.0, strength:Number = 1, quality:int = 1, type:String = "inner", knockout:Boolean = false)
      {
         super();
         this.distance = distance;
         this.angle = angle;
         if(colors != null)
         {
            this.colors = colors;
         }
         if(alphas != null)
         {
            this.alphas = alphas;
         }
         if(ratios != null)
         {
            this.ratios = ratios;
         }
         this.blurX = blurX;
         this.blurY = blurY;
         this.quality = quality;
         this.strength = strength;
         this.type = type;
         this.knockout = knockout;
      }
      
      native public function get angle() : Number;
      
      native public function set angle(param1:Number) : void;
      
      native public function get alphas() : Array;
      
      native public function set alphas(param1:Array) : void;
      
      native public function get blurX() : Number;
      
      native public function set blurX(param1:Number) : void;
      
      native public function get blurY() : Number;
      
      native public function set blurY(param1:Number) : void;
      
      native public function get colors() : Array;
      
      native public function set colors(param1:Array) : void;
      
      native public function get distance() : Number;
      
      native public function set distance(param1:Number) : void;
      
      native public function get knockout() : Boolean;
      
      native public function set knockout(param1:Boolean) : void;
      
      native public function get quality() : int;
      
      native public function set quality(param1:int) : void;
      
      native public function get ratios() : Array;
      
      native public function set ratios(param1:Array) : void;
      
      native public function get strength() : Number;
      
      native public function set strength(param1:Number) : void;
      
      native public function get type() : String;
      
      native public function set type(param1:String) : void;
      
      override public function clone() : BitmapFilter
      {
         return new GradientGlowFilter(this.distance,this.angle,this.colors,this.alphas,this.ratios,this.blurX,this.blurY,this.strength,this.quality,this.type,this.knockout);
      }
   }
}
