package flash.events
{
   [API("688")]
   public class AVPauseAtPeriodEndEvent extends Event
   {
      
      public static const AV_PAUSE_AT_PERIOD_END:String = "avPauseAtPeriodEnd";
       
      
      private var m_userData:int;
      
      public function AVPauseAtPeriodEndEvent(type:String = "avPauseAtPeriodEnd", bubbles:Boolean = false, cancelable:Boolean = false, userData:int = 0)
      {
         super(type,bubbles,cancelable);
         this.m_userData = userData;
      }
      
      public function get userData() : int
      {
         return this.m_userData;
      }
   }
}
