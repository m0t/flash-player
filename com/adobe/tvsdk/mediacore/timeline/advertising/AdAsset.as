package com.adobe.tvsdk.mediacore.timeline.advertising
{
   import com.adobe.tvsdk.mediacore.MediaResource;
   import com.adobe.tvsdk.mediacore.metadata.Metadata;
   
   [native(instance="PSDKAdAssetObject",methods="auto",cls="PSDKAdAssetClass")]
   [API("712")]
   public class AdAsset
   {
       
      
      public function AdAsset(id:String, duration:Number, resource:MediaResource, adClick:AdClick, metadata:Metadata)
      {
         super();
         this.ctor(id,duration,resource,adClick,metadata);
      }
      
      native private function ctor(param1:String, param2:Number, param3:MediaResource, param4:AdClick, param5:Metadata) : void;
      
      native public final function get isValid() : Boolean;
      
      native public final function get id() : String;
      
      native public final function get duration() : Number;
      
      native public final function get resource() : MediaResource;
      
      native public final function get adClick() : AdClick;
      
      native public final function get metadata() : Metadata;
   }
}
