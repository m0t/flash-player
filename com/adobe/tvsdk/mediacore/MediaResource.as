package com.adobe.tvsdk.mediacore
{
   import com.adobe.tvsdk.mediacore.metadata.Metadata;
   
   [native(instance="PSDKMediaResourceObject",methods="auto",cls="PSDKMediaResourceClass")]
   [API("712")]
   public class MediaResource
   {
       
      
      public function MediaResource(url:String, type:int, metadata:Metadata)
      {
         super();
         this.ctor(url,type,metadata);
      }
      
      native public final function equals(param1:MediaResource) : Boolean;
      
      native private function ctor(param1:String, param2:int, param3:Metadata) : void;
      
      native public final function get url() : String;
      
      native public final function get type() : int;
      
      native public final function get metadata() : Metadata;
      
      native public final function get isValid() : Boolean;
   }
}
