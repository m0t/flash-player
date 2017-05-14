package flash.net.drm
{
   [native(instance="DRMResetContextObject",methods="auto",cls="DRMResetContextClass")]
   class DRMResetContext extends DRMManagerSession
   {
       
      
      public var m_isAutoReset:Boolean;
      
      function DRMResetContext(isAutoReset:Boolean)
      {
         super();
         this.m_isAutoReset = isAutoReset;
      }
      
      override public function onSessionComplete() : void
      {
         issueDRMStatusEvent(metadata,null);
      }
      
      override public function onSessionError() : void
      {
         issueDRMErrorEvent(metadata,getLastError(),getLastSubErrorID(),getLastServerErrorString());
      }
      
      public function doReset() : void
      {
         var errorCode:uint = 0;
         if(!m_isInSession)
         {
            m_isInSession = true;
            errorCode = this.resetInner(this.m_isAutoReset);
            if(errorCode != 0)
            {
               m_isInSession = false;
               errorCodeToThrow(errorCode);
            }
            else
            {
               setTimerUp();
            }
         }
      }
      
      native private function resetInner(param1:Boolean) : uint;
   }
}
