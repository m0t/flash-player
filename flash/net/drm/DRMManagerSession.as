package flash.net.drm
{
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   [native(instance="DRMManagerSessionObject",methods="auto",cls="DRMManagerSessionClass")]
   class DRMManagerSession extends EventDispatcher
   {
      
      static const STATUS_READY:uint = 0;
      
      static const STATUS_NOTREADY:uint = 1;
      
      static const STATUS_FAILED:uint = 2;
      
      static const STATUS_UNKNOWN:uint = 3;
       
      
      private var m_metadata:DRMContentData;
      
      private var m_checkStatusTimer:Timer;
      
      public var m_isInSession:Boolean;
      
      function DRMManagerSession()
      {
         super();
         this.m_isInSession = false;
      }
      
      public function onSessionError() : void
      {
      }
      
      public function onSessionComplete() : void
      {
      }
      
      public function setTimerUp() : void
      {
         if(this.m_checkStatusTimer == null)
         {
            this.m_checkStatusTimer = new Timer(100,0);
         }
         this.m_checkStatusTimer.addEventListener(TimerEvent.TIMER,this.onCheckStatus);
         this.m_checkStatusTimer.start();
      }
      
      public function get metadata() : DRMContentData
      {
         return this.m_metadata;
      }
      
      public function set metadata(inData:DRMContentData) : void
      {
         this.m_metadata = inData;
      }
      
      public function checkStatus() : uint
      {
         return this.checkStatusInner();
      }
      
      native private function isAutoResetError(param1:uint) : Boolean;
      
      private function doAutoReset() : void
      {
         var errorCode:* = this.getLastError();
         if(this.isAutoResetError(errorCode))
         {
            DRMManager.getDRMManagerInternal().resetDRMVouchersInternal(true);
         }
      }
      
      private function onCheckStatus(ev:TimerEvent) : *
      {
         var errorCode:uint = this.checkStatus();
         if(errorCode != STATUS_NOTREADY)
         {
            this.m_isInSession = false;
            this.m_checkStatusTimer.stop();
            if(errorCode == STATUS_READY)
            {
               this.onSessionComplete();
            }
            else
            {
               this.doAutoReset();
               this.onSessionError();
            }
            this.m_checkStatusTimer.removeEventListener(TimerEvent.TIMER,this.onCheckStatus);
            this.m_checkStatusTimer = null;
         }
      }
      
      native public function getLastError() : uint;
      
      native public function getLastSubErrorID() : uint;
      
      native public function getLastServerErrorString() : String;
      
      public function issueDRMStatusEvent(inMetadata:DRMContentData, voucher:DRMVoucher) : *
      {
         this.issueDRMStatusEventInner(DRMStatusEvent.DRM_STATUS,inMetadata,voucher,false);
      }
      
      native private function issueDRMStatusEventInner(param1:String, param2:DRMContentData, param3:DRMVoucher, param4:Boolean) : void;
      
      native public function issueDRMErrorEvent(param1:DRMContentData, param2:int, param3:int, param4:String) : void;
      
      native public function errorCodeToThrow(param1:uint) : void;
      
      native private function checkStatusInner() : uint;
   }
}
