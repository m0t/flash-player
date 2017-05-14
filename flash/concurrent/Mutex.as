package flash.concurrent
{
   [native(instance="MutexObject",cls="MutexClass",gc="exact")]
   [API("684")]
   public final class Mutex
   {
       
      
      public function Mutex()
      {
         super();
         this.ctor();
      }
      
      native public static function get isSupported() : Boolean;
      
      native public function lock() : void;
      
      native public function tryLock() : Boolean;
      
      native public function unlock() : void;
      
      native private function ctor() : void;
   }
}
