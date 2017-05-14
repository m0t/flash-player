package flash.media
{
   [native(instance="SoundTransformObject",methods="auto",cls="SoundTransformClass",gc="exact")]
   public final class SoundTransform
   {
       
      
      public function SoundTransform(vol:Number = 1, panning:Number = 0)
      {
         super();
         this.volume = vol;
         this.pan = panning;
      }
      
      native public function get volume() : Number;
      
      native public function set volume(param1:Number) : void;
      
      native public function get leftToLeft() : Number;
      
      native public function set leftToLeft(param1:Number) : void;
      
      native public function get leftToRight() : Number;
      
      native public function set leftToRight(param1:Number) : void;
      
      native public function get rightToRight() : Number;
      
      native public function set rightToRight(param1:Number) : void;
      
      native public function get rightToLeft() : Number;
      
      native public function set rightToLeft(param1:Number) : void;
      
      public function get pan() : Number
      {
         if(this.leftToRight == 0 && this.rightToLeft == 0)
         {
            return 1 - this.leftToLeft * this.leftToLeft;
         }
         return 0;
      }
      
      public function set pan(panning:Number) : void
      {
         this.leftToLeft = Math.sqrt(1 - panning);
         this.leftToRight = 0;
         this.rightToRight = Math.sqrt(1 + panning);
         this.rightToLeft = 0;
      }
   }
}
