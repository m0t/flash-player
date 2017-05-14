package flash.net.drm
{
   [native(instance="DRMVoucherStoreContextObject",methods="auto",cls="DRMVoucherStoreContextClass")]
   class DRMVoucherStoreContext extends DRMManagerSession
   {
       
      
      function DRMVoucherStoreContext()
      {
         super();
      }
      
      public function getVoucherFromStore(inMetadata:DRMContentData) : void
      {
         var errorCode:uint = 0;
         if(!m_isInSession)
         {
            m_isInSession = true;
            metadata = inMetadata;
            errorCode = this.getVoucherFromStoreInner(metadata);
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
      
      public function get voucher() : DRMVoucher
      {
         return this.getVoucherInner();
      }
      
      override public function onSessionComplete() : void
      {
         issueDRMStatusEvent(metadata,this.getVoucherInner());
      }
      
      override public function onSessionError() : void
      {
         issueDRMErrorEvent(metadata,getLastError(),getLastSubErrorID(),getLastServerErrorString());
      }
      
      native private function getVoucherFromStoreInner(param1:DRMContentData) : uint;
      
      native private function getVoucherInner() : DRMVoucher;
   }
}
