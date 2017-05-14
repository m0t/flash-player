package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   import com.adobe.tvsdk.mediacore.notifications.Notification;
   
   [native(instance="PSDKNotificationEventObject",methods="auto",cls="PSDKNotificationEventClass")]
   [API("712")]
   public class NotificationEvent extends PSDKEvent
   {
      
      public static const OPERATION_FAILED:int = 131;
       
      
      public function NotificationEvent(type:int, notification:Notification, target:PSDKEventTargetInterface = null)
      {
         super(type,target);
         this.ctor(type,notification,target);
      }
      
      native private function ctor(param1:int, param2:Notification, param3:PSDKEventTargetInterface = null) : void;
      
      native public final function get notification() : Notification;
   }
}
