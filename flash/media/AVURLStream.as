package flash.media
{
   import flash.net.URLRequest;
   import flash.net.URLStream;
   
   [native(instance="AVURLStreamObject",methods="auto",cls="AVURLStreamClass")]
   public class AVURLStream extends URLStream
   {
       
      
      public function AVURLStream()
      {
         super();
      }
      
      native override public function load(param1:URLRequest) : void;
      
      native public function set cookieHeader(param1:String) : void;
   }
}
