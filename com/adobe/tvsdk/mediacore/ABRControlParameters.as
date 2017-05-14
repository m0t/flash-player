package com.adobe.tvsdk.mediacore
{
   [native(instance="PSDKABRControlParametersObject",methods="auto",cls="PSDKABRControlParametersClass")]
   [API("712")]
   public class ABRControlParameters
   {
      
      public static const DEFAULT_ABR_INITIAL_BITRATE:uint = 0;
      
      public static const DEFAULT_ABR_MIN_BITRATE:uint = 0;
      
      public static const DEFAULT_ABR_MAX_BITRATE:uint = 2147483647;
      
      public static const DEFAULT_ABR_POLICY:int = 1;
      
      public static const CONSERVATIVE_POLICY:int = 0;
      
      public static const MODERATE_POLICY:int = 1;
      
      public static const AGGRESSIVE_POLICY:int = 2;
       
      
      public function ABRControlParameters(nInitialBitRate:uint = 0, nMinBitRate:uint = 0, nMaxBitRate:uint = 2147483647, eABRPolicy:int = 1, nMinTrickPlayBitRate:uint = 0, nMaxTrickPlayBitRate:uint = 2147483647, nMaxTrickPlayBandwidthUsage:uint = 2147483647, dMaxPlayoutRate:Number = 1.0)
      {
         super();
         this.ctor(nInitialBitRate,nMinBitRate,nMaxBitRate,eABRPolicy,nMinTrickPlayBitRate,nMaxTrickPlayBitRate,nMaxTrickPlayBandwidthUsage,dMaxPlayoutRate);
      }
      
      native private function ctor(param1:uint = 0, param2:uint = 0, param3:uint = 2147483647, param4:int = 1, param5:uint = 0, param6:uint = 2147483647, param7:uint = 2147483647, param8:Number = 1.0) : void;
      
      native public final function set initialBitRate(param1:uint) : void;
      
      native public final function get initialBitRate() : uint;
      
      native public final function set minBitRate(param1:uint) : void;
      
      native public final function get minBitRate() : uint;
      
      native public final function set maxBitRate(param1:uint) : void;
      
      native public final function get maxBitRate() : uint;
      
      native public final function set minTrickPlayBitRate(param1:uint) : void;
      
      native public final function get minTrickPlayBitRate() : uint;
      
      native public final function set maxTrickPlayBitRate(param1:uint) : void;
      
      native public final function get maxTrickPlayBitRate() : uint;
      
      native public final function set maxTrickPlayBandwidthUsage(param1:uint) : void;
      
      native public final function get maxTrickPlayBandwidthUsage() : uint;
      
      native public final function set maxPlayoutRate(param1:Number) : void;
      
      native public final function get maxPlayoutRate() : Number;
      
      native public final function set policy(param1:int) : void;
      
      native public final function get policy() : int;
   }
}
