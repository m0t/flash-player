package flash.system
{
   [native(instance="SecurityDomainObject",methods="auto",cls="SecurityDomainClass",gc="exact")]
   public class SecurityDomain
   {
       
      
      public function SecurityDomain()
      {
         super();
         this.ctor_impl();
      }
      
      native public static function get currentDomain() : SecurityDomain;
      
      native private function ctor_impl() : void;
      
      [API("680")]
      native public function get domainID() : String;
   }
}
