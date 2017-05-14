package com.adobe.tvsdk.mediacore
{
   [native(instance="PSDKPSDKEventDispatcherObject",methods="auto",cls="PSDKPSDKEventDispatcherClass",construct="native")]
   [API("712")]
   public class PSDKEventDispatcher
   {
      
      public static const AllEventWildcard:int = -1;
       
      
      public function PSDKEventDispatcher()
      {
         super();
      }
      
      native public final function dispatchEvent(param1:PSDKEvent) : void;
      
      native public final function validateThreadBinding() : void;
      
      native public final function addEventListener(param1:int, param2:Function) : Object;
      
      native public final function removeEventListener(param1:int, param2:Function) : void;
   }
}
