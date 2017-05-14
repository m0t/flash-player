package com.adobe.tvsdk.mediacore
{
   import com.adobe.tvsdk.mediacore.metadata.AdvertisingMetadata;
   import com.adobe.tvsdk.mediacore.system.NetworkConfiguration;
   
   [native(instance="PSDKMediaPlayerItemConfigObject",methods="auto",cls="PSDKMediaPlayerItemConfigClass")]
   [API("712")]
   public class MediaPlayerItemConfig
   {
      
      public static const DEFAULT_AD_TAG:String = "#EXT-X-CUE";
      
      public static const SERVER_SIDE_AD_TAG:String = "#EXT-X-MARKER";
       
      
      public function MediaPlayerItemConfig(adTags:Vector.<String>, subscribeTags:Vector.<String>, factory:ContentFactory, networkConfiguration:NetworkConfiguration, advertisingMetadata:AdvertisingMetadata, customRangeMetadata:CustomRangeMetadata, adSignalingMode:int)
      {
         super();
         this.ctor(adTags,subscribeTags,factory,networkConfiguration,advertisingMetadata,customRangeMetadata,adSignalingMode);
      }
      
      native private function ctor(param1:Vector.<String>, param2:Vector.<String>, param3:ContentFactory, param4:NetworkConfiguration, param5:AdvertisingMetadata, param6:CustomRangeMetadata, param7:int) : void;
      
      native public final function get adSignalingMode() : int;
      
      native public final function set adSignalingMode(param1:int) : void;
      
      native public final function get advertisingMetadata() : AdvertisingMetadata;
      
      native public final function set advertisingMetadata(param1:AdvertisingMetadata) : void;
      
      native public final function get customRangeMetadata() : CustomRangeMetadata;
      
      native public final function set customRangeMetadata(param1:CustomRangeMetadata) : void;
      
      native public final function get advertisingFactory() : ContentFactory;
      
      native public final function set advertisingFactory(param1:ContentFactory) : void;
      
      native public final function get subscribeTags() : Vector.<String>;
      
      native public final function set subscribeTags(param1:Vector.<String>) : void;
      
      native public final function get adTags() : Vector.<String>;
      
      native public final function set adTags(param1:Vector.<String>) : void;
      
      native public final function get networkConfiguration() : NetworkConfiguration;
      
      native public final function set networkConfiguration(param1:NetworkConfiguration) : void;
      
      native public final function get useHardwareDecoder() : Boolean;
      
      native public final function set useHardwareDecoder(param1:Boolean) : void;
   }
}
