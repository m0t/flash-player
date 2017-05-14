package com.adobe.tvsdk.mediacore.events
{
   import com.adobe.tvsdk.mediacore.PSDKEvent;
   import com.adobe.tvsdk.mediacore.PSDKEventTargetInterface;
   import com.adobe.tvsdk.mediacore.timeline.Reservation;
   
   [native(instance="PSDKReservationEventObject",methods="auto",cls="PSDKReservationEventClass")]
   [API("712")]
   public class ReservationEvent extends PSDKEvent
   {
      
      public static const RESERVATION_REACHED:int = 122;
       
      
      public function ReservationEvent(reservation:Reservation, target:PSDKEventTargetInterface = null)
      {
         super(PSDKEventType.RESERVATION_REACHED,target);
         this.ctor(reservation,target);
      }
      
      native private function ctor(param1:Reservation, param2:PSDKEventTargetInterface = null) : void;
      
      native public final function get reservation() : Reservation;
   }
}
