package com.adobe.tvsdk.mediacore
{
   [native(instance="PSDKMediaPlayerItemLoaderObject",methods="auto",cls="PSDKMediaPlayerItemLoaderClass")]
   [API("712")]
   public class MediaPlayerItemLoader extends PSDKEventTargetInterface
   {
       
      
      public function MediaPlayerItemLoader(dispatcher:PSDKEventDispatcher)
      {
         super();
         this.ctor(dispatcher);
      }
      
      native private function ctor(param1:PSDKEventDispatcher) : void;
      
      public function addEventListener(t:int, l:Function) : Object
      {
         return eventDispatcher.addEventListener(t,l);
      }
      
      public function removeEventListener(t:int, l:Function) : void
      {
         eventDispatcher.removeEventListener(t,l);
      }
      
      public function dispatchEvent(e:PSDKEvent) : void
      {
         eventDispatcher.dispatchEvent(e);
      }
      
      native public final function load(param1:MediaResource, param2:int, param3:ItemLoaderListener = null, param4:MediaPlayerItemConfig = null) : void;
      
      native public final function cancel() : void;
      
      native public final function prepareBuffer(param1:Number = 0) : void;
      
      native public final function get currentItem() : MediaPlayerItem;
      
      native public final function get bufferControlParameters() : BufferControlParameters;
      
      native public final function set bufferControlParameters(param1:BufferControlParameters) : void;
      
      native public final function get abrControlParameters() : ABRControlParameters;
      
      native public final function set abrControlParameters(param1:ABRControlParameters) : void;
      
      native public final function get drmManager() : DRMManager;
   }
}
