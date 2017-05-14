package flash.events
{
   public class DataEvent extends TextEvent
   {
      
      public static const DATA:String = "data";
      
      public static const UPLOAD_COMPLETE_DATA:String = "uploadCompleteData";
       
      
      public function DataEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, data:String = "")
      {
         super(type,bubbles,cancelable,data);
      }
      
      override public function clone() : Event
      {
         return new DataEvent(type,bubbles,cancelable,this.data);
      }
      
      override public function toString() : String
      {
         return formatToString("DataEvent","type","bubbles","cancelable","eventPhase","data");
      }
      
      public function get data() : String
      {
         return super.text;
      }
      
      public function set data(value:String) : void
      {
         super.text = value;
      }
   }
}
