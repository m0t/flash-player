package com.adobe.tvsdk.mediacore.systems.decoders
{
   import com.adobe.tvsdk.mediacore.metadata.Metadata;
   
   [native(instance="PSDKTagDecoderObject",methods="auto",cls="PSDKTagDecoderClass")]
   [API("712")]
   public class TagDecoder
   {
       
      
      public function TagDecoder(type:int)
      {
         super();
         this.ctor(type);
      }
      
      native private function ctor(param1:int) : void;
      
      native public final function process(param1:String) : Metadata;
   }
}
