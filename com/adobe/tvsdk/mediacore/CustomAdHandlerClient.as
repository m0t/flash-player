package com.adobe.tvsdk.mediacore
{
   [native(instance="PSDKCustomAdHandlerClientObject",methods="auto",cls="PSDKCustomAdHandlerClientClass",construct="native")]
   [API("712")]
   public class CustomAdHandlerClient
   {
       
      
      public function CustomAdHandlerClient()
      {
         super();
      }
      
      native public final function onAdBegin() : void;
      
      native public final function onAdPaused() : void;
      
      native public final function onAdResumed() : void;
      
      native public final function onAdError() : void;
      
      native public final function onAdEnd() : void;
      
      native public final function onAdProgress(param1:Number, param2:Number) : void;
   }
}
