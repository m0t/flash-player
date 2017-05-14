package com.adobe.tvsdk.mediacore.timeline
{
   import com.adobe.tvsdk.mediacore.utils.TimeRange;
   
   [native(instance="PSDKReservationObject",methods="auto",cls="PSDKReservationClass")]
   [API("712")]
   public class Reservation
   {
       
      
      public function Reservation()
      {
         super();
      }
      
      native public final function get range() : TimeRange;
      
      native public final function get hold() : Number;
   }
}
