package flash.net
{
   [native(instance="ResponderObject",methods="auto",cls="ResponderClass")]
   public class Responder
   {
       
      
      public function Responder(result:Function, status:Function = null)
      {
         super();
         this.ctor(result,status);
      }
      
      native private function ctor(param1:Function, param2:Function) : void;
   }
}
