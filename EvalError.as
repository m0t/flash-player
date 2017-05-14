package
{
   [native(instance="EvalErrorObject",methods="auto",cls="EvalErrorClass",gc="exact")]
   public dynamic class EvalError extends Error
   {
      
      public static const length:int = 1;
      
      {
         prototype.name = "EvalError";
      }
      
      public function EvalError(message:* = "", id:* = 0)
      {
         super(message,id);
         this.name = prototype.name;
      }
   }
}
