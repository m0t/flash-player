package com.adobe.tvsdk.mediacore
{
   import com.adobe.tvsdk.mediacore.info.AudioTrack;
   import com.adobe.tvsdk.mediacore.info.ClosedCaptionsTrack;
   import com.adobe.tvsdk.mediacore.info.DRMMetadataInfo;
   import com.adobe.tvsdk.mediacore.info.Profile;
   import com.adobe.tvsdk.mediacore.metadata.TimedMetadata;
   
   [native(instance="PSDKMediaPlayerItemObject",methods="auto",cls="PSDKMediaPlayerItemClass",construct="native")]
   [API("712")]
   public class MediaPlayerItem
   {
       
      
      public function MediaPlayerItem()
      {
         super();
      }
      
      native public final function selectAudioTrack(param1:AudioTrack) : void;
      
      native public final function selectClosedCaptionsTrack(param1:ClosedCaptionsTrack) : void;
      
      native public final function get resource() : MediaResource;
      
      native public final function get resourceId() : int;
      
      native public final function get isLive() : Boolean;
      
      native public final function get hasAlternateAudio() : Boolean;
      
      native public final function get audioTracks() : Vector.<AudioTrack>;
      
      native public final function get selectedAudioTrack() : AudioTrack;
      
      native public final function get hasClosedCaptions() : Boolean;
      
      native public final function get closedCaptionsTracks() : Vector.<ClosedCaptionsTrack>;
      
      native public final function get selectedClosedCaptionsTrack() : ClosedCaptionsTrack;
      
      native public final function get hasTimedMetadata() : Boolean;
      
      native public final function get timedMetadata() : Vector.<TimedMetadata>;
      
      native public final function get isDynamic() : Boolean;
      
      native public final function get isProtected() : Boolean;
      
      native public final function get drmMetadataInfos() : Vector.<DRMMetadataInfo>;
      
      native public final function get profiles() : Vector.<Profile>;
      
      native public final function get selectedProfile() : Profile;
      
      native public final function get isTrickPlaySupported() : Boolean;
      
      native public final function get availablePlaybackRates() : Vector.<Number>;
      
      native public final function get selectedPlaybackRate() : Number;
      
      native public final function get mediaPlayer() : MediaPlayer;
      
      native public final function get config() : MediaPlayerItemConfig;
   }
}
