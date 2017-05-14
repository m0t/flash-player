package com.adobe.tvsdk.mediacore.metadata
{
   import flash.utils.ByteArray;
   
   [native(instance="PSDKAdvertisingMetadataObject",methods="auto",cls="PSDKAdvertisingMetadataClass")]
   [API("712")]
   public class AdvertisingMetadata extends Metadata
   {
       
      
      public function AdvertisingMetadata()
      {
         super();
         this.ctor();
      }
      
      native private function ctor() : void;
      
      native override public function containsKey(param1:String) : Boolean;
      
      native override public function clone() : Metadata;
      
      native override public function getValue(param1:String) : String;
      
      native override public function setValue(param1:String, param2:String) : void;
      
      native override public function getMetadata(param1:String) : Metadata;
      
      native override public function setMetadata(param1:String, param2:Metadata) : void;
      
      native override public function getObject(param1:String) : Object;
      
      native override public function setObject(param1:String, param2:Object) : void;
      
      native override public function getByteArray(param1:String) : ByteArray;
      
      native override public function setByteArray(param1:String, param2:ByteArray) : void;
      
      native public function get adBreakAsWatched() : int;
      
      native public function set adBreakAsWatched(param1:int) : void;
      
      native public function get hasLivePreroll() : Boolean;
      
      native public function set livePreroll(param1:Boolean) : void;
      
      native public function get hasDelayAdLoading() : Boolean;
      
      native public function set delayAdLoading(param1:Boolean) : void;
      
      native override public function get isEmpty() : Boolean;
      
      native override public function get keySet() : Vector.<String>;
   }
}
