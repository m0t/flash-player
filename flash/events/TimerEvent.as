package flash.events
{
   [native(instance="TimerEventObject",methods="auto",cls="TimerEventClass",gc="exact")]
   public class TimerEvent extends Event
   {
      
      public static const TIMER:String = "timer";
      
      public static const TIMER_COMPLETE:String = "timerComplete";
       
      
      public function TimerEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
      
      override public function clone() : Event
      {
         return new TimerEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("TimerEvent","type","bubbles","cancelable","eventPhase");
      }
      
      native public function updateAfterEvent() : void;
   }
}
