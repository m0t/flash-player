package flash.media
{
   import flash.events.EventDispatcher;
   
   [API("688")]
   [native(instance="AVSourceObject",methods="auto",cls="AVSourceClass")]
   public class AVSource extends EventDispatcher
   {
       
      
      public function AVSource()
      {
         super();
         this.ctor();
      }
      
      native private function ctor() : void;
      
      native public function dispose() : void;
   }
}
