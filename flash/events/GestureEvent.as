package flash.events
{
   [native(instance="GestureEventObject",methods="auto",cls="GestureEventClass")]
   [Version("10.1")]
   public class GestureEvent extends Event
   {
      
      public static const GESTURE_TWO_FINGER_TAP:String = "gestureTwoFingerTap";
       
      
      private var m_phase:String;
      
      private var m_ctrlKey:Boolean;
      
      private var m_altKey:Boolean;
      
      private var m_shiftKey:Boolean;
      
      public function GestureEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false, phase:String = null, localX:Number = 0, localY:Number = 0, ctrlKey:Boolean = false, altKey:Boolean = false, shiftKey:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.m_phase = phase;
         this.localX = localX;
         this.localY = localY;
         this.m_ctrlKey = ctrlKey;
         this.m_altKey = altKey;
         this.m_shiftKey = shiftKey;
      }
      
      override public function clone() : Event
      {
         return new GestureEvent(type,bubbles,cancelable,this.m_phase,this.localX,this.localY,this.m_ctrlKey,this.m_altKey,this.m_shiftKey);
      }
      
      override public function toString() : String
      {
         return formatToString("GestureEvent","type","bubbles","cancelable","phase","localX","localY","stageX","stageY","ctrlKey","altKey","shiftKey");
      }
      
      native public function get localX() : Number;
      
      native public function set localX(param1:Number) : void;
      
      native public function get localY() : Number;
      
      native public function set localY(param1:Number) : void;
      
      public function get phase() : String
      {
         return this.m_phase;
      }
      
      public function set phase(value:String) : void
      {
         this.m_phase = value;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.m_ctrlKey;
      }
      
      public function set ctrlKey(value:Boolean) : void
      {
         this.m_ctrlKey = value;
      }
      
      public function get altKey() : Boolean
      {
         return this.m_altKey;
      }
      
      public function set altKey(value:Boolean) : void
      {
         this.m_altKey = value;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.m_shiftKey;
      }
      
      public function set shiftKey(value:Boolean) : void
      {
         this.m_shiftKey = value;
      }
      
      public function get stageX() : Number
      {
         if(isNaN(this.localX) || isNaN(this.localY))
         {
            return Number.NaN;
         }
         return this.getStageX();
      }
      
      public function get stageY() : Number
      {
         if(isNaN(this.localX) || isNaN(this.localY))
         {
            return Number.NaN;
         }
         return this.getStageY();
      }
      
      native public function updateAfterEvent() : void;
      
      native private function getStageX() : Number;
      
      native private function getStageY() : Number;
   }
}
