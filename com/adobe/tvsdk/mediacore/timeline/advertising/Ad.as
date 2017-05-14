package com.adobe.tvsdk.mediacore.timeline.advertising
{
   import com.adobe.tvsdk.mediacore.timeline.ContentTracker;
   
   [native(instance="PSDKAdObject",methods="auto",cls="PSDKAdClass")]
   [API("712")]
   public class Ad
   {
       
      
      public function Ad(id:String, adType:int, duration:Number, isCustomAdMarker:Boolean, primaryAsset:AdAsset, companionAssets:Vector.<AdBannerAsset>, tracker:ContentTracker, adInsertionType:int, isClickable:Boolean, isCustomAd:Boolean)
      {
         super();
         this.ctor(id,adType,duration,isCustomAdMarker,primaryAsset,companionAssets,tracker,adInsertionType,isClickable,isCustomAd);
      }
      
      native private function ctor(param1:String, param2:int, param3:Number, param4:Boolean, param5:AdAsset, param6:Vector.<AdBannerAsset>, param7:ContentTracker, param8:int, param9:Boolean, param10:Boolean) : void;
      
      native public final function equals(param1:Ad) : Boolean;
      
      native public final function get primaryAsset() : AdAsset;
      
      native public final function get companionAssets() : Vector.<AdBannerAsset>;
      
      native public final function get duration() : Number;
      
      native public final function get id() : String;
      
      native public final function get adType() : int;
      
      native public final function get isCustomAd() : Boolean;
      
      native public final function get adInsertionType() : int;
      
      native public final function get tracker() : ContentTracker;
      
      native public final function get isClickable() : Boolean;
      
      native public final function get isVPAIDAd() : Boolean;
   }
}
