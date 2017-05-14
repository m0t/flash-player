package flash.security
{
   import flash.utils.ByteArray;
   
   [native(instance="X509CertificateObject",methods="auto",cls="X509CertificateClass")]
   [API("674")]
   public class X509Certificate
   {
       
      
      public function X509Certificate()
      {
         super();
      }
      
      native public function get version() : uint;
      
      native public function get serialNumber() : String;
      
      native public function get signatureAlgorithmOID() : String;
      
      native public function get signatureAlgorithmParams() : ByteArray;
      
      native public function get issuer() : X500DistinguishedName;
      
      native public function get validNotBefore() : Date;
      
      native public function get validNotAfter() : Date;
      
      native public function get subject() : X500DistinguishedName;
      
      native public function get subjectPublicKeyAlgorithmOID() : String;
      
      native public function get subjectPublicKey() : String;
      
      native public function get issuerUniqueID() : String;
      
      native public function get subjectUniqueID() : String;
      
      native public function get encoded() : ByteArray;
   }
}
