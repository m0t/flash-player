package
{
   [native(instance="RangeErrorObject",methods="auto",cls="RangeErrorClass",gc="exact")]
   public dynamic class RangeError extends Error
   {
      
      public static const length:int = 1;
      
      {
         prototype.name = "RangeError";
      }
      
      public function RangeError(message:* = "", id:* = 0)
      {
         super(message,id);
         this.name = prototype.name;
      }
   }
}
