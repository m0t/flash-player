package flash.media
{
   public class AVNetworkingParams
   {
       
      
      private var m_forceNativeNetworking:Boolean;
      
      private var m_readSetCookieHeader:Boolean;
      
      private var m_useCookieHeaderForAllRequests:Boolean;
      
      public function AVNetworkingParams(init_forceNativeNetworking:Boolean = false, init_readSetCookieHeader:Boolean = true, init_useCookieHeaderForAllRequests:Boolean = false)
      {
         super();
         this.m_forceNativeNetworking = init_forceNativeNetworking;
         this.m_readSetCookieHeader = init_readSetCookieHeader;
         this.m_useCookieHeaderForAllRequests = init_useCookieHeaderForAllRequests;
      }
      
      public function get forceNativeNetworking() : Boolean
      {
         return this.m_forceNativeNetworking;
      }
      
      public function set forceNativeNetworking(val:Boolean) : void
      {
         this.m_forceNativeNetworking = val;
      }
      
      public function get readSetCookieHeader() : Boolean
      {
         return this.m_readSetCookieHeader;
      }
      
      public function set readSetCookieHeader(val:Boolean) : void
      {
         this.m_readSetCookieHeader = val;
      }
      
      public function get useCookieHeaderForAllRequests() : Boolean
      {
         return this.m_useCookieHeaderForAllRequests;
      }
      
      public function set useCookieHeaderForAllRequests(val:Boolean) : void
      {
         this.m_useCookieHeaderForAllRequests = val;
      }
   }
}
