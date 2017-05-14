package flash.events
{
   [Version("10.1")]
   public class StageVideoEvent extends Event
   {
      
      public static const RENDER_STATE:String = "renderState";
      
      [Deprecated(replacement="flash.media.VideoStatus.UNAVAILABLE",since="Flash Player 10.2, AIR 3")]
      public static const RENDER_STATUS_UNAVAILABLE:String = "unavailable";
      
      [Deprecated(replacement="flash.media.VideoStatus.SOFTWARE",since="Flash Player 10.2, AIR 3")]
      public static const RENDER_STATUS_SOFTWARE:String = "software";
      
      [Deprecated(replacement="flash.media.VideoStatus.ACCELERATED",since="Flash Player 10.2, AIR 3")]
      public static const RENDER_STATUS_ACCELERATED:String = "accelerated";
       
      
      private var m_status:String;
      
      private var m_colorSpace:String;
      
      public const codecInfo:String;
      
      public function StageVideoEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, status:String = null, colorSpace:String = null)
      {
         super(type,bubbles,cancelable);
         this.m_status = status;
         this.m_colorSpace = colorSpace;
      }
      
      public function get status() : String
      {
         return this.m_status;
      }
      
      public function get colorSpace() : String
      {
         return this.m_colorSpace;
      }
   }
}
