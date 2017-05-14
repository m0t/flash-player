package com.adobe.tvsdk.mediacore
{
   [native(instance="PSDKPSDKEventTargetInterfaceObject",methods="auto",cls="PSDKPSDKEventTargetInterfaceClass",construct="native")]
   [API("712")]
   public class PSDKEventTargetInterface
   {
       
      
      public function PSDKEventTargetInterface()
      {
         super();
      }
      
      native public function get eventDispatcher() : PSDKEventDispatcher;
   }
}
