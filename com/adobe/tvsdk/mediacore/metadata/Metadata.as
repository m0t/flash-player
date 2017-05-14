package com.adobe.tvsdk.mediacore.metadata
{
   import flash.utils.ByteArray;
   
   [native(instance="PSDKMetadataObject",methods="auto",cls="PSDKMetadataClass")]
   [API("712")]
   public class Metadata
   {
       
      
      public function Metadata()
      {
         super();
         this.ctor();
      }
      
      native private function ctor() : void;
      
      native public function containsKey(param1:String) : Boolean;
      
      native public function clone() : Metadata;
      
      native public function getValue(param1:String) : String;
      
      native public function setValue(param1:String, param2:String) : void;
      
      native public function getMetadata(param1:String) : Metadata;
      
      native public function setMetadata(param1:String, param2:Metadata) : void;
      
      native public function getObject(param1:String) : Object;
      
      native public function setObject(param1:String, param2:Object) : void;
      
      native public function getByteArray(param1:String) : ByteArray;
      
      native public function setByteArray(param1:String, param2:ByteArray) : void;
      
      native public function get isEmpty() : Boolean;
      
      native public function get keySet() : Vector.<String>;
   }
}
