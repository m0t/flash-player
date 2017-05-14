package flash.system
{
   import flash.utils.ByteArray;
   
   [native(instance="WorkerDomainObject",methods="auto",cls="WorkerDomainClass",construct="native")]
   [API("680")]
   public final class WorkerDomain
   {
      
      private static var _current:WorkerDomain;
       
      
      public function WorkerDomain()
      {
         super();
      }
      
      native public static function get isSupported() : Boolean;
      
      public static function get current() : WorkerDomain
      {
         return _current;
      }
      
      native public function createWorker(param1:ByteArray, param2:Boolean = false) : Worker;
      
      native public function listWorkers() : Vector.<Worker>;
   }
}
