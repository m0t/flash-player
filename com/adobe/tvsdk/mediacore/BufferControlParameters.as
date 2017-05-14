package com.adobe.tvsdk.mediacore
{
   [native(instance="PSDKBufferControlParametersObject",methods="auto",cls="PSDKBufferControlParametersClass")]
   [API("712")]
   public class BufferControlParameters
   {
      
      public static const DEFAULT_INITIAL_BUFFER_TIME:Number = 2000;
      
      public static const DEFAULT_PLAY_BUFFER_TIME:Number = 30000;
       
      
      public function BufferControlParameters(nInitialBufferTime:Number, nPlayBufferTime:Number)
      {
         super();
         this.ctor(nInitialBufferTime,nPlayBufferTime);
      }
      
      native private function ctor(param1:Number, param2:Number) : void;
      
      native public final function set initialBufferTime(param1:Number) : void;
      
      native public final function get initialBufferTime() : Number;
      
      native public final function set playBufferTime(param1:Number) : void;
      
      native public final function get playBufferTime() : Number;
   }
}
