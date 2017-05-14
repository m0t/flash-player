package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.MediaPlayerItem;
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   
   [native(instance="PSDKMediaPlayerItemEventObject",methods="auto",cls="PSDKMediaPlayerItemEventClass")]
   [API("712")]
   public class MediaPlayerItemEvent extends PSDKEvent
   {
      
      public static const ITEM_CREATED:int = 112;
      
      public static const ITEM_UPDATED:int = 113;
      
      public static const CAPTIONS_UPDATED:int = 114;
      
      public static const AUDIO_UPDATED:int = 115;
      
      public static const MASTER_UPDATED:int = 117;
       
      
      public function MediaPlayerItemEvent(type:int, item:MediaPlayerItem, target:PSDKEventTargetInterface = null)
      {
         super(type,target);
         this.ctor(type,item,target);
      }
      
      native private function ctor(param1:int, param2:MediaPlayerItem, param3:PSDKEventTargetInterface = null) : void;
      
      native public final function get item() : MediaPlayerItem;
   }
}
