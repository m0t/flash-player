package flash.crypto
{
   import flash.utils.ByteArray;
   
   [API("674")]
   [native("FlashCryptoScript::generateRandomBytes")]
   native public function generateRandomBytes(param1:uint) : ByteArray;
}
