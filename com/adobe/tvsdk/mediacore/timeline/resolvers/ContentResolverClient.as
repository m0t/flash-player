package com.adobe.tvsdk.mediacore.timeline.resolvers
{
   import com.adobe.tvsdk.mediacore.notifications.Notification;
   import com.adobe.tvsdk.mediacore.timeline.Opportunity;
   import com.adobe.tvsdk.mediacore.timeline.operations.TimelineOperation;
   
   [native(instance="PSDKContentResolverClientObject",methods="auto",cls="PSDKContentResolverClientClass",construct="native")]
   [API("712")]
   public class ContentResolverClient
   {
       
      
      public function ContentResolverClient()
      {
         super();
      }
      
      native public final function process(param1:Vector.<TimelineOperation>) : void;
      
      native public final function notifyCompleted(param1:Opportunity) : void;
      
      native public final function notifyFailed(param1:Opportunity, param2:Notification) : void;
   }
}
