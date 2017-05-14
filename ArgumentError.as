package
{
   [native(instance="ArgumentErrorObject",methods="auto",cls="ArgumentErrorClass",gc="exact")]
   public dynamic class ArgumentError extends Error
   {
      
      public static const length:int = 1;
      
      {
         prototype.name = "ArgumentError";
      }
      
      public function ArgumentError(message:* = "", id:* = 0)
      {
         super(message,id);
         this.name = prototype.name;
      }
   }
}
