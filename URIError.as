package
{
   [native(instance="URIErrorObject",methods="auto",cls="URIErrorClass",gc="exact")]
   public dynamic class URIError extends Error
   {
      
      public static const length:int = 1;
      
      {
         prototype.name = "URIError";
      }
      
      public function URIError(message:* = "", id:* = 0)
      {
         super(message,id);
         this.name = prototype.name;
      }
   }
}
