package flash.net.drm
{
   import flash.events.DRMDeviceGroupErrorEvent;
   import flash.events.DRMDeviceGroupEvent;
   
   [native(instance="DRMRemoveFromDeviceGroupContextObject",methods="auto",cls="DRMRemoveFromDeviceGroupContextClass")]
   class DRMRemoveFromDeviceGroupContext extends DRMManagerSession
   {
       
      
      private var m_deviceGroup:DRMDeviceGroup;
      
      function DRMRemoveFromDeviceGroupContext()
      {
         super();
      }
      
      public function removeFromDeviceGroup(deviceGroup:DRMDeviceGroup) : void
      {
         var errorCode:uint = 0;
         if(!m_isInSession)
         {
            m_isInSession = true;
            this.m_deviceGroup = deviceGroup;
            errorCode = this.removeFromDeviceGroupInner(deviceGroup);
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
      
      override public function onSessionComplete() : void
      {
         var event:DRMDeviceGroupEvent = new DRMDeviceGroupEvent(DRMDeviceGroupEvent.REMOVE_FROM_DEVICE_GROUP_COMPLETE);
         event.deviceGroup = this.m_deviceGroup;
         dispatchEvent(event);
      }
      
      override public function onSessionError() : void
      {
         var event:DRMDeviceGroupErrorEvent = new DRMDeviceGroupErrorEvent(DRMDeviceGroupErrorEvent.REMOVE_FROM_DEVICE_GROUP_ERROR,false,false,getLastServerErrorString(),getLastError());
         event.deviceGroup = this.m_deviceGroup;
         event.subErrorID = getLastSubErrorID();
         dispatchEvent(event);
      }
      
      native private function removeFromDeviceGroupInner(param1:DRMDeviceGroup) : uint;
   }
}
