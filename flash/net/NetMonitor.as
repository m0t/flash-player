package flash.net
{
   import flash.events.EventDispatcher;
   
   [native(instance="NetMonitorObject",methods="auto",cls="NetMonitorClass")]
   [API("672")]
   [Event(name="netStreamCreate",type="flash.events.NetMonitorEvent")]
   public class NetMonitor extends EventDispatcher
   {
       
      
      public function NetMonitor()
      {
         super();
      }
      
      native public function listStreams() : Vector.<NetStream>;
   }
}
