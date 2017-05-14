package com.adobe.tvsdk.mediacore.qos
{
   [native(instance="PSDKPlaybackInformationObject",methods="auto",cls="PSDKPlaybackInformationClass")]
   [API("712")]
   public class PlaybackInformation
   {
       
      
      public function PlaybackInformation(timeToFirstByte:Number, timeToLoad:Number, timeToPrepare:Number, timeToStart:Number, timeToFail:Number, secondsPlayed:int, secondsSpent:int, frameRate:Number, droppedFrameCount:int, perceivedBandwidth:int, bitRate:int, bufferTime:Number, bufferLength:int, emptyBufferCount:int, bufferingTime:Number)
      {
         super();
         this.ctor(timeToFirstByte,timeToLoad,timeToPrepare,timeToStart,timeToFail,secondsPlayed,secondsSpent,frameRate,droppedFrameCount,perceivedBandwidth,bitRate,bufferTime,bufferLength,emptyBufferCount,bufferingTime);
      }
      
      native private function ctor(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:int, param10:int, param11:int, param12:Number, param13:int, param14:int, param15:Number) : void;
      
      native public final function get timeToFirstByte() : Number;
      
      native public final function get timeToLoad() : Number;
      
      native public final function get timeToPrepare() : Number;
      
      native public final function get timeToStart() : Number;
      
      native public final function get timeToFail() : Number;
      
      native public final function get totalSecondsPlayed() : int;
      
      native public final function get totalSecondsSpent() : int;
      
      native public final function get frameRate() : Number;
      
      native public final function get droppedFrameCount() : int;
      
      native public final function get perceivedBandwidth() : int;
      
      native public final function get bitRate() : int;
      
      native public final function get bufferTime() : Number;
      
      native public final function get bufferLength() : int;
      
      native public final function get emptyBufferCount() : int;
      
      native public final function get bufferingTime() : Number;
   }
}
