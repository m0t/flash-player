package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   
   [native(instance="PSDKBufferEventObject",methods="auto",cls="PSDKBufferEventClass")]
   [API("712")]
   public class BufferEvent extends PSDKEvent
   {
      
      public static const BUFFERING_BEGIN:int = 108;
      
      public static const BUFFERING_END:int = 109;
       
      
      public function BufferEvent(type:int, target:PSDKEventTargetInterface = null)
      {
         super(type,target);
         this.ctor(type,target);
      }
      
      native private function ctor(param1:int, param2:PSDKEventTargetInterface = null) : void;
   }
}
