package com.adobe.tvsdk.mediacore.notifications
{
   import com.adobe.tvsdk.mediacore.metadata.Metadata;
   
   [native(instance="PSDKNotificationObject",methods="auto",cls="PSDKNotificationClass")]
   [API("712")]
   public class Notification
   {
       
      
      public function Notification(type:int, code:int, metadata:Metadata, innerNotification:Notification)
      {
         super();
         this.ctor(type,code,metadata,innerNotification);
      }
      
      public function toString() : String
      {
         return "Notification Object { type=" + this.type + " code=" + this.code + " metadata: " + this.metadata + " }";
      }
      
      native private function ctor(param1:int, param2:int, param3:Metadata, param4:Notification) : void;
      
      native public final function get type() : int;
      
      native public final function get code() : int;
      
      native public final function get metadata() : Metadata;
      
      native public final function get innerNotification() : Notification;
   }
}
