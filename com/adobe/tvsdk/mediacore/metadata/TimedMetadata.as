package com.adobe.tvsdk.mediacore.metadata
{
   [native(instance="PSDKTimedMetadataObject",methods="auto",cls="PSDKTimedMetadataClass")]
   [API("712")]
   public class TimedMetadata
   {
       
      
      public function TimedMetadata(type:int, time:Number, id:String, name:String, content:String, metadata:Metadata)
      {
         super();
         this.ctor(type,time,id,name,content,metadata);
      }
      
      native private function ctor(param1:int, param2:Number, param3:String, param4:String, param5:String, param6:Metadata) : void;
      
      native public final function compareTo(param1:TimedMetadata) : int;
      
      native public final function equals(param1:TimedMetadata) : Boolean;
      
      native public final function get type() : int;
      
      native public final function get time() : Number;
      
      native public final function get id() : String;
      
      native public final function get name() : String;
      
      native public final function get content() : String;
      
      native public final function get metadata() : Metadata;
   }
}
