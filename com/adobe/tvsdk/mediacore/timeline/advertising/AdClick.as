package com.adobe.tvsdk.mediacore.timeline.advertising
{
   [native(instance="PSDKAdClickObject",methods="auto",cls="PSDKAdClickClass")]
   [API("712")]
   public class AdClick
   {
       
      
      public function AdClick(id:String, title:String, url:String)
      {
         super();
         this.ctor(id,title,url);
      }
      
      native private function ctor(param1:String, param2:String, param3:String) : void;
      
      native public final function get isValid() : Boolean;
      
      native public final function get id() : String;
      
      native public final function get title() : String;
      
      native public final function get url() : String;
   }
}
