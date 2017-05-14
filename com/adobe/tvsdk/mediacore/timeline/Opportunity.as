package com.adobe.tvsdk.mediacore.timeline
{
   import com.adobe.tvsdk.mediacore.metadata.Metadata;
   
   [native(instance="PSDKOpportunityObject",methods="auto",cls="PSDKOpportunityClass")]
   [API("712")]
   public class Opportunity
   {
       
      
      public function Opportunity(id:String, placement:Placement, settings:Metadata, customParams:Metadata)
      {
         super();
         this.ctor(id,placement,settings,customParams);
      }
      
      native private function ctor(param1:String, param2:Placement, param3:Metadata, param4:Metadata) : void;
      
      native public final function get id() : String;
      
      native public final function get placement() : Placement;
      
      native public final function get settings() : Metadata;
      
      native public final function get customParameters() : Metadata;
   }
}
