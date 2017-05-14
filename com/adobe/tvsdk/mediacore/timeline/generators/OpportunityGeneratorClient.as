package com.adobe.tvsdk.mediacore.timeline.generators
{
   import com.adobe.tvsdk.mediacore.timeline.Opportunity;
   import com.adobe.tvsdk.mediacore.timeline.Reservation;
   import com.adobe.tvsdk.mediacore.utils.TimeRange;
   
   [native(instance="PSDKOpportunityGeneratorClientObject",methods="auto",cls="PSDKOpportunityGeneratorClientClass",construct="native")]
   [API("712")]
   public class OpportunityGeneratorClient
   {
       
      
      public function OpportunityGeneratorClient()
      {
         super();
      }
      
      native public final function resolve(param1:Opportunity) : void;
      
      native public final function hold(param1:TimeRange) : Reservation;
      
      native public final function cancel(param1:Reservation) : void;
   }
}
