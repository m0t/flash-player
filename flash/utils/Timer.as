package flash.utils
{
   import flash.events.EventDispatcher;
   
   [native(instance="TimerObject",methods="auto",cls="TimerClass",gc="exact")]
   [Event(name="timerComplete",type="flash.events.TimerEvent")]
   [Event(name="timer",type="flash.events.TimerEvent")]
   public class Timer extends EventDispatcher
   {
       
      
      private var m_delay:Number;
      
      private var m_repeatCount:int;
      
      private var m_iteration:int;
      
      public function Timer(delay:Number, repeatCount:int = 0)
      {
         super();
         if(delay < 0 || !isFinite(delay))
         {
            Error.throwError(RangeError,2066);
         }
         this.m_delay = delay;
         this.m_repeatCount = repeatCount;
      }
      
      public function get delay() : Number
      {
         return this.m_delay;
      }
      
      public function get repeatCount() : int
      {
         return this.m_repeatCount;
      }
      
      public function set repeatCount(value:int) : void
      {
         this.m_repeatCount = value;
         if(this.running && this.m_repeatCount != 0 && this.m_iteration >= this.m_repeatCount)
         {
            this.stop();
         }
      }
      
      public function get currentCount() : int
      {
         return this.m_iteration;
      }
      
      native public function get running() : Boolean;
      
      public function set delay(value:Number) : void
      {
         if(value < 0 || !isFinite(value))
         {
            Error.throwError(RangeError,2066);
         }
         this.m_delay = value;
         if(this.running)
         {
            this.stop();
            this.start();
         }
      }
      
      private function tick() : void
      {
         this.m_iteration++;
         this._timerDispatch();
         if(this.m_repeatCount != 0 && this.m_iteration >= this.m_repeatCount)
         {
            this.stop();
            dispatchEvent(new TimerEvent(TimerEvent.TIMER_COMPLETE,false,false));
         }
      }
      
      public function start() : void
      {
         if(!this.running)
         {
            this._start(this.m_delay,this.tick);
         }
      }
      
      public function reset() : void
      {
         if(this.running)
         {
            this.stop();
         }
         this.m_iteration = 0;
      }
      
      native private function _start(param1:Number, param2:Function) : void;
      
      native private function _timerDispatch() : void;
      
      native public function stop() : void;
   }
}
