package flash.events
{
   public class AsyncErrorEvent extends ErrorEvent
   {
      
      public static const ASYNC_ERROR:String = "asyncError";
       
      
      public var error:Error;
      
      public function AsyncErrorEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, text:String = "", error:Error = null)
      {
         this.error = error;
         var errorID:int = 0;
         if(error)
         {
            errorID = error.errorID;
         }
         super(type,bubbles,cancelable,text,errorID);
      }
      
      override public function clone() : Event
      {
         return new AsyncErrorEvent(type,bubbles,cancelable,text,this.error);
      }
      
      override public function toString() : String
      {
         return formatToString("AsyncErrorEvent","type","bubbles","cancelable","eventPhase","text","error");
      }
   }
}
