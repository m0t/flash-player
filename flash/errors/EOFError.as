package flash.errors
{
   public dynamic class EOFError extends IOError
   {
       
      
      public function EOFError(message:String = "", id:int = 0)
      {
         super(message,id);
      }
   }
}
