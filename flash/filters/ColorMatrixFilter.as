package flash.filters
{
   [native(instance="ColorMatrixFilterObject",methods="auto",cls="ColorMatrixFilterClass")]
   public final class ColorMatrixFilter extends BitmapFilter
   {
       
      
      public function ColorMatrixFilter(matrix:Array = null)
      {
         super();
         if(matrix != null)
         {
            this.matrix = matrix;
         }
      }
      
      native public function get matrix() : Array;
      
      native public function set matrix(param1:Array) : void;
      
      override public function clone() : BitmapFilter
      {
         return new ColorMatrixFilter(this.matrix);
      }
   }
}
