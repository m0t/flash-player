package flash.sampler
{
   [native(instance="NewObjectSampleObject",methods="auto",cls="NewObjectSampleClass")]
   public final class NewObjectSample extends Sample
   {
       
      
      public const id:Number;
      
      public const type:Class;
      
      public function NewObjectSample()
      {
         super();
      }
      
      native public function get object() : *;
      
      native public function get size() : Number;
   }
}
