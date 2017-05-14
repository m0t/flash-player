package flash.concurrent
{
   [native(instance="ConditionObject",cls="ConditionClass",gc="exact")]
   [API("684")]
   public final class Condition
   {
       
      
      public function Condition(mutex:Mutex)
      {
         super();
         this.ctor(mutex);
      }
      
      native public static function get isSupported() : Boolean;
      
      native public function get mutex() : Mutex;
      
      native public function wait(param1:Number = -1) : Boolean;
      
      native public function notify() : void;
      
      native public function notifyAll() : void;
      
      native private function ctor(param1:Mutex) : void;
   }
}
