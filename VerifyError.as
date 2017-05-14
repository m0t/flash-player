package
{
   [native(instance="VerifyErrorObject",methods="auto",cls="VerifyErrorClass",gc="exact")]
   public dynamic class VerifyError extends Error
   {
      
      public static const length:int = 1;
      
      {
         prototype.name = "VerifyError";
      }
      
      public function VerifyError(message:* = "", id:* = 0)
      {
         super(message,id);
         this.name = prototype.name;
      }
   }
}
