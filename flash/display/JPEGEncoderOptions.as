package flash.display
{
   [native(instance="JPEGEncoderOptionsObject",methods="auto",cls="JPEGEncoderOptionsClass")]
   [API("680")]
   public final class JPEGEncoderOptions
   {
       
      
      public var quality:uint;
      
      public function JPEGEncoderOptions(quality:uint = 80)
      {
         super();
         this.quality = quality;
      }
   }
}
