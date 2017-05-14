package
{
   [native(instance="UninitializedErrorObject",methods="auto",cls="UninitializedErrorClass",gc="exact")]
   public dynamic class UninitializedError extends Error
   {
      
      public static const length:int = 1;
      
      {
         prototype.name = "UninitializedError";
      }
      
      public function UninitializedError(message:* = "", id:* = 0)
      {
         super(message,id);
         this.name = prototype.name;
      }
   }
}
