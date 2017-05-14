package flash.net.drm
{
   import flash.utils.ByteArray;
   
   [native(instance="DRMVoucherObject",methods="auto",cls="DRMVoucherClass",construct="native")]
   [API("667")]
   public class DRMVoucher
   {
       
      
      private var m_licenseID:String;
      
      private var m_policyID:String;
      
      private var m_endDate:Date;
      
      private var m_startDate:Date;
      
      private var m_offlineLeaseStartDate:Date;
      
      private var m_offlineLeaseExpirationDate:Date;
      
      private var m_customPolicies:Object;
      
      private var m_playbackTimeWindow:DRMPlaybackTimeWindow;
      
      public function DRMVoucher()
      {
         super();
      }
      
      public function get serverURL() : String
      {
         return this.FMRMSURL;
      }
      
      native private function get FMRMSURL() : String;
      
      public function get voucherStartDate() : Date
      {
         var rawStartDate:Number = NaN;
         if(this.m_startDate == null)
         {
            rawStartDate = this.getStartDateInner();
            if(rawStartDate > 0)
            {
               this.m_startDate = new Date(1000 * rawStartDate);
            }
         }
         return this.m_startDate;
      }
      
      public function get voucherEndDate() : Date
      {
         var rawEndDate:Number = NaN;
         if(this.m_endDate == null)
         {
            rawEndDate = this.getEndDateInner();
            if(rawEndDate > 0)
            {
               this.m_endDate = new Date(1000 * rawEndDate);
            }
         }
         return this.m_endDate;
      }
      
      public function get offlineLeaseStartDate() : Date
      {
         var rawDate:Number = NaN;
         if(this.m_offlineLeaseStartDate == null)
         {
            rawDate = this.getOfflineLeaseStartDateInner();
            if(rawDate > 0)
            {
               this.m_offlineLeaseStartDate = new Date(1000 * rawDate);
            }
         }
         return this.m_offlineLeaseStartDate;
      }
      
      public function get offlineLeaseEndDate() : Date
      {
         var rawDate:Number = NaN;
         if(this.m_offlineLeaseExpirationDate == null)
         {
            rawDate = this.getOfflineLeaseExpirationDateInner();
            if(rawDate > 0)
            {
               this.m_offlineLeaseExpirationDate = new Date(1000 * rawDate);
            }
         }
         return this.m_offlineLeaseExpirationDate;
      }
      
      native private function getEndDateInner() : Number;
      
      native private function getStartDateInner() : Number;
      
      native private function getOfflineLeaseStartDateInner() : Number;
      
      native private function getOfflineLeaseExpirationDateInner() : Number;
      
      public function get policies() : Object
      {
         if(this.m_customPolicies == null)
         {
            this.createCustomPolicyObject();
         }
         return this.m_customPolicies;
      }
      
      public function get licenseID() : String
      {
         if(this.m_licenseID == null)
         {
            this.m_licenseID = this.getLicenseIDInner();
         }
         return this.m_licenseID;
      }
      
      native private function getLicenseIDInner() : String;
      
      public function get policyID() : String
      {
         if(this.m_policyID == null)
         {
            this.m_policyID = this.getPolicyIDInner();
         }
         return this.m_policyID;
      }
      
      native private function getPolicyIDInner() : String;
      
      native private function createCustomPolicyObject() : void;
      
      [cppcall]
      private function setCustomPolicyObject(customPolicyObject:Object) : void
      {
         this.m_customPolicies = customPolicyObject;
      }
      
      native private function get playStartTime() : Number;
      
      native private function get playbackEndTime() : Number;
      
      native private function get playbackWindow() : Number;
      
      public function get playbackTimeWindow() : DRMPlaybackTimeWindow
      {
         var playbackWindowLength:uint = 0;
         if(this.m_playbackTimeWindow == null || this.m_playbackTimeWindow.startDate == null && this.playStartTime > 0)
         {
            playbackWindowLength = this.playbackWindow;
            if(this.playbackWindow > 0)
            {
               this.m_playbackTimeWindow = this.createDRMPlaybackTimeWindow(playbackWindowLength,this.playStartTime,this.playbackEndTime);
            }
         }
         return this.m_playbackTimeWindow;
      }
      
      public function toByteArray() : ByteArray
      {
         return this.toByteArrayInner();
      }
      
      native private function createDRMPlaybackTimeWindow(param1:Number, param2:Number, param3:Number) : DRMPlaybackTimeWindow;
      
      native private function toByteArrayInner() : ByteArray;
   }
}
