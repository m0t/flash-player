package com.adobe.tvsdk.mediacore.timeline.advertising
{
   import com.adobe.tvsdk.mediacore.MediaResource;
   import com.adobe.tvsdk.mediacore.metadata.Metadata;
   
   [native(instance="PSDKAdBannerAssetObject",methods="auto",cls="PSDKAdBannerAssetClass")]
   [API("712")]
   public class AdBannerAsset extends AdAsset
   {
       
      
      public function AdBannerAsset(id:String, duration:Number, resource:MediaResource, staticUrl:String, adClick:AdClick, width:uint, height:uint, mimeType:String, metadata:Metadata, trackingClickUrls:Vector.<String>, impressionUrls:Vector.<String>)
      {
         super(id,duration,resource,adClick,metadata);
         this.ctor(id,duration,resource,staticUrl,adClick,width,height,mimeType,metadata,trackingClickUrls,impressionUrls);
      }
      
      native private function ctor(param1:String, param2:Number, param3:MediaResource, param4:String, param5:AdClick, param6:uint, param7:uint, param8:String, param9:Metadata, param10:Vector.<String>, param11:Vector.<String>) : void;
      
      native public final function get width() : uint;
      
      native public final function get height() : uint;
      
      native public final function get resourceType() : String;
      
      native public final function get staticUrl() : String;
      
      native public final function get bannerData() : String;
   }
}
