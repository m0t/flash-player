package
{
   [native(instance="DefinitionErrorObject",methods="auto",cls="DefinitionErrorClass",gc="exact")]
   public dynamic class DefinitionError extends Error
   {
      
      public static const length:int = 1;
      
      {
         prototype.name = "DefinitionError";
      }
      
      public function DefinitionError(message:* = "", id:* = 0)
      {
         super(message,id);
         this.name = prototype.name;
      }
   }
}
