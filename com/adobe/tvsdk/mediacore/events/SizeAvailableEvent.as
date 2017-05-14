package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   
   [native(instance="PSDKSizeAvailableEventObject",methods="auto",cls="PSDKSizeAvailableEventClass")]
   [API("712")]
   public class SizeAvailableEvent extends PSDKEvent
   {
      
      public static const SIZE_AVAILABLE:int = 126;
       
      
      public function SizeAvailableEvent(height:int, width:int, target:PSDKEventTargetInterface = null)
      {
         super(PSDKEventType.SIZE_AVAILABLE,target);
         this.ctor(height,width,target);
      }
      
      native private function ctor(param1:int, param2:int, param3:PSDKEventTargetInterface = null) : void;
      
      native public final function get height() : int;
      
      native public final function get width() : int;
   }
}
