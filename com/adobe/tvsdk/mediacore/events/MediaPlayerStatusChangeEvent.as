package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   import com.adobe.tvsdk.mediacore.metadata.Metadata;
   import com.adobe.tvsdk.mediacore.notifications.Notification;
   
   [native(instance="PSDKMediaPlayerStatusChangeEventObject",methods="auto",cls="PSDKMediaPlayerStatusChangeEventClass")]
   [API("712")]
   public class MediaPlayerStatusChangeEvent extends PSDKEvent
   {
      
      public static const STATUS_CHANGED:int = 118;
       
      
      public function MediaPlayerStatusChangeEvent(status:int, metadata:Metadata, target:PSDKEventTargetInterface = null)
      {
         super(PSDKEventType.STATUS_CHANGED,target);
         this.ctor(status,metadata,target);
      }
      
      public function get error() : Notification
      {
         return new Notification(NotificationType.ERROR,PSDKErrorCode.SUCCESS,this.metadata,null);
      }
      
      native private function ctor(param1:int, param2:Metadata, param3:PSDKEventTargetInterface = null) : void;
      
      native public final function get status() : int;
      
      native public final function get metadata() : Metadata;
   }
}
