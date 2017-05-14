package flash.events
{
   public class NetStatusEvent extends Event
   {
      
      public static const NET_STATUS:String = "netStatus";
       
      
      private var m_info:Object;
      
      public function NetStatusEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, info:Object = null)
      {
         super(type,bubbles,cancelable);
         this.m_info = info;
      }
      
      override public function clone() : Event
      {
         return new NetStatusEvent(type,bubbles,cancelable,this.m_info);
      }
      
      override public function toString() : String
      {
         return formatToString("NetStatusEvent","type","bubbles","cancelable","eventPhase","info");
      }
      
      public function get info() : Object
      {
         return this.m_info;
      }
      
      public function set info(value:Object) : void
      {
         this.m_info = value;
      }
   }
}
