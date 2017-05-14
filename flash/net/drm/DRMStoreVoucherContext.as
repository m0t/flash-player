package flash.net.drm
{
   import flash.utils.ByteArray;
   
   [native(instance="DRMStoreVoucherContextObject",methods="auto",cls="DRMStoreVoucherContextClass")]
   class DRMStoreVoucherContext extends DRMManagerSession
   {
       
      
      private var m_voucher:ByteArray;
      
      function DRMStoreVoucherContext(voucher:ByteArray)
      {
         super();
         this.m_voucher = voucher;
      }
      
      override public function onSessionComplete() : void
      {
         issueDRMStatusEvent(metadata,null);
      }
      
      override public function onSessionError() : void
      {
         issueDRMErrorEvent(metadata,getLastError(),getLastSubErrorID(),getLastServerErrorString());
      }
      
      public function doStoreVoucher() : void
      {
         var errorCode:uint = 0;
         if(!m_isInSession)
         {
            m_isInSession = true;
            errorCode = this.storeVoucherInner(this.m_voucher);
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
      
      native private function storeVoucherInner(param1:ByteArray) : uint;
   }
}
