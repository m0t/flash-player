package com.adobe.tvsdk.mediacore.metadata
{
   [native(instance="PSDKAuditudeSettingsObject",methods="auto",cls="PSDKAuditudeSettingsClass")]
   [API("712")]
   public class AuditudeSettings extends AdvertisingMetadata
   {
       
      
      public function AuditudeSettings()
      {
         super();
         this.ctor();
      }
      
      native private function ctor() : void;
      
      native override public final function clone() : Metadata;
      
      native public final function get zoneId() : String;
      
      native public final function set zoneId(param1:String) : void;
      
      native public final function get mediaId() : String;
      
      native public final function set mediaId(param1:String) : void;
      
      native public final function get defaultMediaId() : String;
      
      native public final function set defaultMediaId(param1:String) : void;
      
      native public final function get domain() : String;
      
      native public final function set domain(param1:String) : void;
      
      native public final function get userAgent() : String;
      
      native public final function set userAgent(param1:String) : void;
      
      native public final function get targetingInfo() : Metadata;
      
      native public final function set targetingInfo(param1:Metadata) : void;
      
      native public final function get customParameters() : Metadata;
      
      native public final function set customParameters(param1:Metadata) : void;
      
      native public final function get creativeRepackagingFormat() : String;
      
      native public final function set creativeRepackagingFormat(param1:String) : void;
      
      native public final function get creativeRepackagingEnabled() : Boolean;
      
      native public final function set creativeRepackagingEnabled(param1:Boolean) : void;
      
      native public final function get showStaticBanners() : Boolean;
      
      native public final function set showStaticBanners(param1:Boolean) : void;
      
      native public final function get fallbackOnInvalidCreative() : Boolean;
      
      native public final function set fallbackOnInvalidCreative(param1:Boolean) : void;
      
      native public final function get validMimeTypes() : Vector.<String>;
      
      native public final function set validMimeTypes(param1:Vector.<String>) : void;
      
      native public final function get creativeRepackagingDomain() : String;
      
      native public final function set creativeRepackagingDomain(param1:String) : void;
   }
}
