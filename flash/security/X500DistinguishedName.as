package flash.security
{
   [native(instance="X500DistinguishedNameObject",methods="auto",cls="X500DistinguishedNameClass")]
   [API("674")]
   public class X500DistinguishedName
   {
       
      
      public function X500DistinguishedName()
      {
         super();
      }
      
      native public function get commonName() : String;
      
      native public function get organizationName() : String;
      
      native public function get organizationalUnitName() : String;
      
      native public function get localityName() : String;
      
      native public function get stateOrProvinceName() : String;
      
      native public function get countryName() : String;
      
      native public function toString() : String;
   }
}
