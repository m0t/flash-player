package flash.system
{
   import flash.utils.ByteArray;
   
   [native(instance="ApplicationDomainObject",methods="auto",cls="ApplicationDomainClass",gc="exact")]
   public final class ApplicationDomain
   {
       
      
      public function ApplicationDomain(parentDomain:ApplicationDomain = null)
      {
         super();
         this.ctor(parentDomain);
      }
      
      native public static function get currentDomain() : ApplicationDomain;
      
      [API("663")]
      native public static function get MIN_DOMAIN_MEMORY_LENGTH() : uint;
      
      native private function ctor(param1:ApplicationDomain) : void;
      
      native public function get parentDomain() : ApplicationDomain;
      
      native public function getDefinition(param1:String) : Object;
      
      native public function hasDefinition(param1:String) : Boolean;
      
      native public function getQualifiedDefinitionNames() : Vector.<String>;
      
      [API("663")]
      native public function get domainMemory() : ByteArray;
      
      [API("663")]
      native public function set domainMemory(param1:ByteArray) : *;
   }
}
