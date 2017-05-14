package flash.media
{
   import flash.net.URLRequest;
   import flash.system.AuthorizedFeatures;
   
   [native("FlashNetScript::avSendToURL")]
   native public function avSendToURL(param1:AuthorizedFeatures, param2:URLRequest, param3:String = null) : void;
}
