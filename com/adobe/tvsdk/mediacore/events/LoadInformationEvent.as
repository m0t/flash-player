package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   import com.adobe.tvsdk.mediacore.qos.LoadInformation;
   
   [native(instance="PSDKLoadInformationEventObject",methods="auto",cls="PSDKLoadInformationEventClass")]
   [API("712")]
   public class LoadInformationEvent extends PSDKEvent
   {
      
      public static const LOAD_INFORMATION_AVAILABLE:int = 111;
       
      
      public function LoadInformationEvent(loadInfo:LoadInformation, target:PSDKEventTargetInterface = null)
      {
         super(PSDKEventType.LOAD_INFORMATION_AVAILABLE,target);
         this.ctor(loadInfo,target);
      }
      
      native private function ctor(param1:LoadInformation, param2:PSDKEventTargetInterface = null) : void;
      
      native public final function get loadInformation() : LoadInformation;
   }
}
