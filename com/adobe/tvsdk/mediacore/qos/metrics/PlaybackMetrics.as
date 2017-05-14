package com.adobe.tvsdk.mediacore.qos.metrics
{
   import com.adobe.tvsdk.mediacore.utils.TimeRange;
   
   [native(instance="PSDKPlaybackMetricsObject",methods="auto",cls="PSDKPlaybackMetricsClass",construct="native")]
   [API("712")]
   public class PlaybackMetrics
   {
       
      
      public function PlaybackMetrics()
      {
         super();
      }
      
      native public final function update() : void;
      
      native public final function reset() : void;
      
      native public final function get time() : Number;
      
      native public final function get playbackRange() : TimeRange;
      
      native public final function get bufferedRange() : TimeRange;
      
      native public final function get seekableRange() : TimeRange;
      
      native public final function get frontBufferedRange() : TimeRange;
      
      native public final function get backBufferedRange() : TimeRange;
      
      native public final function get frameRate() : Number;
      
      native public final function get playbackRate() : Number;
      
      native public final function get droppedFramesCount() : int;
      
      native public final function get perceivedBandwidth() : int;
      
      native public final function get bitRate() : int;
      
      native public final function get bufferTime() : Number;
      
      native public final function get bufferLength() : Number;
      
      native public final function get readHead() : Number;
   }
}
