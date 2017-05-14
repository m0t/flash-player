package com.adobe.tvsdk.mediacore
{
   import com.adobe.tvsdk.mediacore.info.DRMMetadataInfo;
   import com.adobe.tvsdk.mediacore.metadata.AdvertisingMetadata;
   import com.adobe.tvsdk.mediacore.metadata.AuditudeSettings;
   import com.adobe.tvsdk.mediacore.metadata.Metadata;
   import com.adobe.tvsdk.mediacore.metadata.TimedMetadata;
   import com.adobe.tvsdk.mediacore.qos.DeviceInformation;
   import com.adobe.tvsdk.mediacore.qos.QOSProvider;
   import com.adobe.tvsdk.mediacore.system.NetworkConfiguration;
   import com.adobe.tvsdk.mediacore.systems.decoders.TagDecoder;
   import com.adobe.tvsdk.mediacore.timeline.ContentTracker;
   import com.adobe.tvsdk.mediacore.timeline.Opportunity;
   import com.adobe.tvsdk.mediacore.timeline.Placement;
   import com.adobe.tvsdk.mediacore.timeline.advertising.Ad;
   import com.adobe.tvsdk.mediacore.timeline.advertising.AdAsset;
   import com.adobe.tvsdk.mediacore.timeline.advertising.AdBannerAsset;
   import com.adobe.tvsdk.mediacore.timeline.advertising.AdBreak;
   import com.adobe.tvsdk.mediacore.timeline.advertising.AdClick;
   import com.adobe.tvsdk.mediacore.timeline.advertising.policy.AdPolicySelector;
   import com.adobe.tvsdk.mediacore.timeline.generators.OpportunityGenerator;
   import com.adobe.tvsdk.mediacore.timeline.operations.AdBreakPlacement;
   import com.adobe.tvsdk.mediacore.timeline.operations.DeleteRangeTimelineOperation;
   import com.adobe.tvsdk.mediacore.timeline.resolvers.ContentResolver;
   import flash.utils.ByteArray;
   
   [native(instance="PSDKPSDKObject",methods="auto",cls="PSDKPSDKClass",construct="native")]
   [API("712")]
   public class PSDK
   {
       
      
      public function PSDK()
      {
         super();
      }
      
      native public static function get pSDK() : PSDK;
      
      native public final function release() : void;
      
      native public final function createDispatcher() : PSDKEventDispatcher;
      
      native public final function createMediaPlayer(param1:PSDKEventDispatcher) : MediaPlayer;
      
      native public final function createMediaPlayerItemLoader(param1:PSDKEventDispatcher) : MediaPlayerItemLoader;
      
      native public final function createTagDecoder(param1:int) : TagDecoder;
      
      native public final function createAdAsset(param1:String, param2:Number, param3:MediaResource, param4:AdClick, param5:Metadata) : AdAsset;
      
      native public final function createAd(param1:String, param2:int, param3:Number, param4:Boolean, param5:AdAsset, param6:Vector.<AdBannerAsset>, param7:ContentTracker, param8:int, param9:Boolean, param10:Boolean) : Ad;
      
      native public final function createAdBreak(param1:Vector.<Ad>, param2:ContentTracker) : AdBreak;
      
      native public final function createAdBreakEx(param1:Vector.<Ad>, param2:ContentTracker, param3:int) : AdBreak;
      
      native public final function createAdBreakPlacement(param1:AdBreak, param2:Placement) : AdBreakPlacement;
      
      native public final function createDeleteRangeTimelineOperation(param1:Placement) : DeleteRangeTimelineOperation;
      
      native public final function createMetadata() : Metadata;
      
      native public final function createContentResolver(param1:int) : ContentResolver;
      
      native public final function createOpportunityGenerator(param1:int) : OpportunityGenerator;
      
      native public final function createAdPolicySelector(param1:int, param2:MediaPlayerItem) : AdPolicySelector;
      
      native public final function createDRMMetadataInfo(param1:DRMManager, param2:ByteArray, param3:Number, param4:DRMErrorListener) : DRMMetadataInfo;
      
      native public final function createMediaPlayerItemConfig(param1:Vector.<String>, param2:Vector.<String>, param3:ContentFactory, param4:NetworkConfiguration, param5:AdvertisingMetadata, param6:CustomRangeMetadata, param7:int) : MediaPlayerItemConfig;
      
      native public final function createDefaultMediaPlayerItemConfig() : MediaPlayerItemConfig;
      
      native public final function createQOSProvider() : QOSProvider;
      
      native public final function createDefaultContentFactory() : ContentFactory;
      
      native public final function pSDKErrorToString(param1:int) : String;
      
      native public final function createOpportunity(param1:String, param2:Placement, param3:Metadata, param4:Metadata) : Opportunity;
      
      native public final function createTimedMetadata(param1:int, param2:Number, param3:String, param4:String, param5:String, param6:Metadata) : TimedMetadata;
      
      native public final function createAuditudeSettings() : AuditudeSettings;
      
      native public final function createAdvertisingMetadata() : AdvertisingMetadata;
      
      native public final function createCustomRangeMetadata() : CustomRangeMetadata;
      
      native public final function createDefaultNetworkConfiguration() : NetworkConfiguration;
      
      native public final function get deviceInformation() : DeviceInformation;
      
      native public final function set deviceInformation(param1:DeviceInformation) : void;
      
      native public final function get currentTime() : Number;
   }
}
