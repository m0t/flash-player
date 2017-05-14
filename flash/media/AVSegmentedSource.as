package flash.media
{
   [API("688")]
   [native(instance="AVSegmentedSourceObject",methods="auto",cls="AVSegmentedSourceClass")]
   [Event(name="avstatus",type="flash.events.AVStatusEvent")]
   public class AVSegmentedSource extends AVSource
   {
      
      public static const HLS:String = "HLS";
      
      public static const DASH:String = "DASH";
      
      public static const AUDIO:String = "audio";
      
      public static const AUDIO_PID:String = "audiopid";
      
      public static const AUDIO_DESCRIPTION:String = "audiodescription";
      
      public static const AUDIO_LANGUAGE:String = "audiolanguage";
      
      public static const VIDEO:String = "video";
      
      public static const VIDEO_DESCRIPTION:String = "videodescription";
      
      public static const DATA:String = "data";
      
      public static const DATA_DESCRIPTION:String = "datadescription";
       
      
      public function AVSegmentedSource()
      {
         super();
         this.ctor();
      }
      
      native private function ctor() : void;
      
      native public function load(param1:String, param2:String = "HLS", param3:int = 0) : AVResult;
      
      native public function loadWithBackgroundManifest(param1:String, param2:String, param3:int, param4:String) : AVResult;
      
      native public function loadManifest(param1:String, param2:int = 0, param3:String = "HLS") : AVResult;
      
      native public function releaseManifest(param1:int) : AVResult;
      
      native public function setHoldAt(param1:Number) : AVResult;
      
      native public function insertByVirtualTime(param1:Number, param2:int, param3:int = 0, param4:Number = 0) : AVInsertionResult;
      
      native public function insertByLocalTime(param1:int, param2:Number, param3:int, param4:int = 0, param5:Number = 0) : AVInsertionResult;
      
      native public function removeByVirtualTime(param1:Number, param2:Number) : AVResult;
      
      native public function removeByLocalTime(param1:int, param2:Number, param3:Number, param4:Boolean) : AVResult;
      
      native public function getTimeline() : AVTimeline;
      
      native public function getBackgroundTimeline() : AVTimeline;
      
      native public function selectTrack(param1:int, param2:String, param3:int) : AVResult;
      
      native public function selectTrackString(param1:int, param2:String, param3:String) : AVResult;
      
      native public function getPeriodInfo(param1:int) : AVPeriodInfo;
      
      native public function getBackgroundPeriodInfo(param1:int) : AVPeriodInfo;
      
      native public function getTrackCount(param1:int, param2:String) : int;
      
      native public function getTrackInfo(param1:int, param2:String, param3:int) : AVTrackInfo;
      
      native public function setABRParameters(param1:AVABRParameters) : AVResult;
      
      native public function getABRProfileCount(param1:int) : int;
      
      native public function getABRProfileInfoAtIndex(param1:int, param2:int) : AVABRProfileInfo;
      
      native public function getCuePoint(param1:int, param2:int) : AVCuePoint;
      
      native public function setCuePointTags(param1:Array) : AVResult;
      
      native public function getSubscribedTag(param1:int, param2:int) : AVTagData;
      
      native public function getSubscribedTagForBackgroundManifest(param1:int, param2:int) : AVTagData;
      
      native public function getTimelineSubscribedTag(param1:int) : AVTagData;
      
      native public function getTimelineSubscribedTagForBackgroundManifest(param1:int) : AVTagData;
      
      native public function setSubscribedTags(param1:Array) : AVResult;
      
      native public function setSubscribedTagsForBackgroundManifest(param1:Array) : AVResult;
      
      native public function setBandwidth(param1:int) : AVResult;
      
      native public function getPerceivedBandwidth() : uint;
      
      native public function setPauseAtPeriodEnd(param1:int, param2:int = 0) : AVResult;
      
      native public function clearPauseAtPeriodEnd(param1:int) : AVResult;
      
      [API("692")]
      native public function set useRedirectedUrl(param1:Boolean) : void;
      
      native public function set networkingParams(param1:AVNetworkingParams) : void;
      
      native public function get networkingParams() : AVNetworkingParams;
      
      native public function set cookieHeader(param1:String) : void;
      
      native public function set masterUpdateInterval(param1:int) : void;
      
      native public function addCustomHeader(param1:String, param2:Vector.<String>) : void;
   }
}
