package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   
   [native(instance="PSDKSeekEventObject",methods="auto",cls="PSDKSeekEventClass")]
   [API("712")]
   public class SeekEvent extends PSDKEvent
   {
      
      public static const SEEK_POSITION_ADJUSTED:int = 123;
      
      public static const SEEK_BEGIN:int = 124;
      
      public static const SEEK_END:int = 125;
       
      
      public function SeekEvent(type:int, desiredPosition:Number, actualPosition:Number, local:Boolean, target:PSDKEventTargetInterface = null)
      {
         super(type,target);
         this.ctor(type,desiredPosition,actualPosition,local,target);
      }
      
      native private function ctor(param1:int, param2:Number, param3:Number, param4:Boolean, param5:PSDKEventTargetInterface = null) : void;
      
      native public final function get desiredPosition() : Number;
      
      native public final function get actualPosition() : Number;
      
      native public final function get isLocal() : Boolean;
   }
}
