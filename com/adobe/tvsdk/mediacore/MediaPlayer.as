package com.adobe.tvsdk.mediacore
{
   import com.adobe.tvsdk.mediacore.qos.metrics.PlaybackMetrics;
   import com.adobe.tvsdk.mediacore.timeline.Timeline;
   import com.adobe.tvsdk.mediacore.utils.TimeRange;
   
   [native(instance="PSDKMediaPlayerObject",methods="auto",cls="PSDKMediaPlayerClass")]
   [API("712")]
   public class MediaPlayer extends PSDKEventTargetInterface
   {
      
      public static const INVALID_TIME:Number = -1;
      
      public static const LIVE_POINT:Number = -2;
      
      public static const VISIBLE:int = 0;
      
      public static const INVISIBLE:int = 1;
       
      
      private var _context:MediaPlayerContext;
      
      public function MediaPlayer(dispatcher:PSDKEventDispatcher)
      {
         super();
         this.ctor(dispatcher);
      }
      
      native private function ctor(param1:PSDKEventDispatcher) : void;
      
      public function get context() : MediaPlayerContext
      {
         return this._context;
      }
      
      public function set context(context:MediaPlayerContext) : void
      {
         this._context = context;
         if(this._context != null)
         {
            this._context.authorizedFeatures.enableMediaPlayerHLSPlayback(this);
         }
      }
      
      public function addEventListener(t:int, l:Function) : Object
      {
         return eventDispatcher.addEventListener(t,l);
      }
      
      public function removeEventListener(t:int, l:Function) : void
      {
         eventDispatcher.removeEventListener(t,l);
      }
      
      public function dispatchEvent(e:PSDKEvent) : void
      {
         eventDispatcher.dispatchEvent(e);
      }
      
      native public final function prepareToPlay(param1:Number = -2) : void;
      
      native public final function prepareBuffer() : void;
      
      native public final function play() : void;
      
      native public final function pause() : void;
      
      native public final function seek(param1:Number) : void;
      
      native public final function seekToLocal(param1:Number) : void;
      
      native public final function reset() : void;
      
      native public final function release() : void;
      
      native public final function replaceCurrentResource(param1:MediaResource, param2:MediaPlayerItemConfig = null) : void;
      
      native public final function registerCurrentItemInBackground(param1:MediaPlayerItemConfig) : void;
      
      native public final function unregisterCurrentBackgroundItem() : void;
      
      native public final function replaceCurrentItem(param1:MediaPlayerItem) : void;
      
      native public final function suspend() : void;
      
      native public final function restore() : void;
      
      native public final function notifyClick() : void;
      
      native public final function get playbackRange() : TimeRange;
      
      native public final function get seekableRange() : TimeRange;
      
      native public final function get currentTime() : Number;
      
      native public final function get localTime() : Number;
      
      native public final function get bufferedRange() : TimeRange;
      
      native public final function get timeline() : Timeline;
      
      native public final function get view() : MediaPlayerView;
      
      native public final function set view(param1:MediaPlayerView) : void;
      
      native public final function get drmManager() : DRMManager;
      
      native public final function get currentItem() : MediaPlayerItem;
      
      native public final function get status() : int;
      
      native public final function get volume() : Number;
      
      native public final function set volume(param1:Number) : void;
      
      native public final function get abrControlParameters() : ABRControlParameters;
      
      native public final function set abrControlParameters(param1:ABRControlParameters) : void;
      
      native public final function get bufferControlParameters() : BufferControlParameters;
      
      native public final function set bufferControlParameters(param1:BufferControlParameters) : void;
      
      native public final function get ccVisibility() : int;
      
      native public final function set ccVisibility(param1:int) : void;
      
      native public final function get ccStyle() : TextFormat;
      
      native public final function set ccStyle(param1:TextFormat) : void;
      
      native public final function get playbackMetrics() : PlaybackMetrics;
      
      native public final function get rate() : Number;
      
      native public final function set rate(param1:Number) : void;
      
      native public final function get currentTimeUpdateInterval() : Number;
      
      native public final function set currentTimeUpdateInterval(param1:Number) : void;
   }
}
