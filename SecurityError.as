package
{
   [native(instance="SecurityErrorObject",methods="auto",cls="SecurityErrorClass",gc="exact")]
   public dynamic class SecurityError extends Error
   {
      
      public static const length:int = 1;
      
      {
         prototype.name = "SecurityError";
      }
      
      public function SecurityError(message:* = "", id:* = 0)
      {
         super(message,id);
         this.name = prototype.name;
      }
   }
}
