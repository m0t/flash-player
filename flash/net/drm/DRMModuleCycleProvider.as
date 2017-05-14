package flash.net.drm
{
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   [native(instance="DRMModuleCycleProviderObject",methods="auto",cls="DRMModuleCycleProviderClass",construct="native")]
   class DRMModuleCycleProvider
   {
       
      
      private var m_heartBeatTimer:Timer;
      
      function DRMModuleCycleProvider()
      {
         super();
      }
      
      [cppcall]
      private function startTimer() : void
      {
         if(this.m_heartBeatTimer == null)
         {
            this.m_heartBeatTimer = new Timer(30,0);
            this.m_heartBeatTimer.addEventListener(TimerEvent.TIMER,this.onHeartBeat);
         }
         this.m_heartBeatTimer.start();
      }
      
      private function onHeartBeat(ev:TimerEvent) : *
      {
         var continueTimer:Boolean = this.iHeartBeat();
         if(!continueTimer)
         {
            this.m_heartBeatTimer.stop();
            this.m_heartBeatTimer.removeEventListener(TimerEvent.TIMER,this.onHeartBeat);
         }
      }
      
      native private function iHeartBeat() : Boolean;
   }
}
