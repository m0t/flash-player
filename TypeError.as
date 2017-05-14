package
{
   [native(instance="TypeErrorObject",methods="auto",cls="TypeErrorClass",gc="exact")]
   public dynamic class TypeError extends Error
   {
      
      public static const length:int = 1;
      
      {
         prototype.name = "TypeError";
      }
      
      public function TypeError(message:* = "", id:* = 0)
      {
         super(message,id);
         this.name = prototype.name;
      }
   }
}
