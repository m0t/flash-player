package com.adobe.tvsdk.mediacore
{
   [native(instance="PSDKPSDKEventObject",methods="auto",cls="PSDKPSDKEventClass")]
   [API("712")]
   public class PSDKEvent
   {
       
      
      public function PSDKEvent(type:uint, target:PSDKEventTargetInterface)
      {
         super();
         this.ctor(type,target);
      }
      
      native private function ctor(param1:uint, param2:PSDKEventTargetInterface) : void;
      
      native public final function get type() : int;
      
      native public final function get target() : PSDKEventTargetInterface;
      
      native public final function get postedTime() : Number;
   }
}
