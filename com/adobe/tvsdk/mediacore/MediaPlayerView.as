package com.adobe.tvsdk.mediacore
{
   import com.adobe.tvsdk.mediacore.view.MediaPlayerViewScalePolicy;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.media.*;
   
   [native(instance="PSDKMediaPlayerViewObject",methods="auto",cls="PSDKMediaPlayerViewClass")]
   [API("712")]
   public class MediaPlayerView extends Sprite
   {
       
      
      private var _needsUpdating:Boolean;
      
      private var _presentOnStage:Boolean;
      
      private var _scalePolicy:MediaPlayerViewScalePolicy;
      
      private var _surface:Rectangle;
      
      public function MediaPlayerView(sv:StageVideo)
      {
         super();
         this.ctor(sv);
         this._needsUpdating = false;
         this._surface = new Rectangle(0,0,0,0);
         this._scalePolicy = new MaintainAspectRatioScalePolicy();
         this.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
      }
      
      public static function create(stageVideo:StageVideo) : MediaPlayerView
      {
         return new MediaPlayerView(stageVideo);
      }
      
      native private function ctor(param1:StageVideo) : void;
      
      override public function set x(val:Number) : void
      {
         this._surface.x = val;
         this.markForRefresh();
      }
      
      override public function set y(val:Number) : void
      {
         this._surface.y = val;
         this.markForRefresh();
      }
      
      override public function set width(val:Number) : void
      {
         this._surface.width = val;
         this.markForRefresh();
      }
      
      override public function set height(val:Number) : void
      {
         this._surface.height = val;
         this.markForRefresh();
      }
      
      public function get scalePolicy() : MediaPlayerViewScalePolicy
      {
         return this._scalePolicy;
      }
      
      public function set scalePolicy(value:MediaPlayerViewScalePolicy) : void
      {
         if(value == null)
         {
            throw new ArgumentError("The scale policy must not be null.");
         }
         if(this._scalePolicy != value)
         {
            this._scalePolicy = value;
            this.markForRefresh();
         }
      }
      
      public function markForRefresh() : void
      {
         if(!this._needsUpdating)
         {
            this._needsUpdating = true;
            this.addEventListener(Event.EXIT_FRAME,this.onExitFrame);
         }
      }
      
      private function mapSurfaceToStage(surface:Rectangle) : Rectangle
      {
         var vPort:Rectangle = new Rectangle();
         if(parent != null)
         {
            vPort.topLeft = parent.localToGlobal(surface.topLeft);
            vPort.bottomRight = parent.localToGlobal(surface.bottomRight);
         }
         else
         {
            vPort = surface;
         }
         return this._scalePolicy.adjust(vPort,this.videoWidth(),this.videoHeight());
      }
      
      private function onAddedToStage(event:Event) : void
      {
         this._presentOnStage = true;
         this.markForRefresh();
      }
      
      private function onRemovedFromStage(event:Event) : void
      {
         this._presentOnStage = false;
      }
      
      private function onExitFrame(event:Event) : void
      {
         var vPort:* = undefined;
         this._needsUpdating = false;
         this.removeEventListener(Event.EXIT_FRAME,this.onExitFrame);
         if(this._presentOnStage)
         {
            vPort = this.mapSurfaceToStage(this._surface);
            this.setPos(vPort.left,vPort.top);
            this.setSize(vPort.right - vPort.left,vPort.bottom - vPort.top);
         }
      }
      
      native private function videoWidth() : int;
      
      native private function videoHeight() : int;
      
      native public final function getX() : int;
      
      native public final function getY() : int;
      
      native public final function getWidth() : int;
      
      native public final function getHeight() : int;
      
      native public final function setSize(param1:int, param2:int) : int;
      
      native public final function setPos(param1:int, param2:int) : int;
      
      native public final function getNativeSurfaceType() : int;
   }
}
