package flash.events
{
   public class StatusEvent extends Event
   {
      
      public static const STATUS:String = "status";
       
      
      private var m_code:String;
      
      private var m_level:String;
      
      public function StatusEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, code:String = "", level:String = "")
      {
         super(type,bubbles,cancelable);
         this.m_code = code;
         this.m_level = level;
      }
      
      override public function clone() : Event
      {
         return new StatusEvent(type,bubbles,cancelable,this.m_code,this.m_level);
      }
      
      override public function toString() : String
      {
         return formatToString("StatusEvent","type","bubbles","cancelable","eventPhase","code","level");
      }
      
      public function get code() : String
      {
         return this.m_code;
      }
      
      public function set code(value:String) : void
      {
         this.m_code = value;
      }
      
      public function get level() : String
      {
         return this.m_level;
      }
      
      public function set level(value:String) : void
      {
         this.m_level = value;
      }
   }
}
