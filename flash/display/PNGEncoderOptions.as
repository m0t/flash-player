package flash.display
{
   [native(instance="PNGEncoderOptionsObject",methods="auto",cls="PNGEncoderOptionsClass")]
   [API("680")]
   public final class PNGEncoderOptions
   {
       
      
      public var fastCompression:Boolean;
      
      public function PNGEncoderOptions(fastCompression:Boolean = false)
      {
         super();
         this.fastCompression = fastCompression;
      }
   }
}
