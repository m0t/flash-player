package flash.filters
{
   [native(instance="ConvolutionFilterObject",methods="auto",cls="ConvolutionFilterClass")]
   public class ConvolutionFilter extends BitmapFilter
   {
       
      
      public function ConvolutionFilter(matrixX:Number = 0, matrixY:Number = 0, matrix:Array = null, divisor:Number = 1.0, bias:Number = 0.0, preserveAlpha:Boolean = true, clamp:Boolean = true, color:uint = 0, alpha:Number = 0.0)
      {
         super();
         this.matrixX = matrixX;
         this.matrixY = matrixY;
         if(matrix != null)
         {
            this.matrix = matrix;
         }
         this.divisor = divisor;
         this.bias = bias;
         this.preserveAlpha = preserveAlpha;
         this.clamp = clamp;
         this.color = color;
         this.alpha = alpha;
      }
      
      native public function get matrix() : Array;
      
      native public function set matrix(param1:Array) : void;
      
      native public function get matrixX() : Number;
      
      native public function set matrixX(param1:Number) : void;
      
      native public function get matrixY() : Number;
      
      native public function set matrixY(param1:Number) : void;
      
      native public function get divisor() : Number;
      
      native public function set divisor(param1:Number) : void;
      
      native public function get bias() : Number;
      
      native public function set bias(param1:Number) : void;
      
      native public function get preserveAlpha() : Boolean;
      
      native public function set preserveAlpha(param1:Boolean) : void;
      
      native public function get clamp() : Boolean;
      
      native public function set clamp(param1:Boolean) : void;
      
      native public function get color() : uint;
      
      native public function set color(param1:uint) : void;
      
      native public function get alpha() : Number;
      
      native public function set alpha(param1:Number) : void;
      
      override public function clone() : BitmapFilter
      {
         return new ConvolutionFilter(this.matrixX,this.matrixY,this.matrix,this.divisor,this.bias,this.preserveAlpha,this.clamp,this.color,this.alpha);
      }
   }
}
