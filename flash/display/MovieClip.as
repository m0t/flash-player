package flash.display
{
   [native(instance="MovieClipObject",methods="auto",cls="MovieClipClass",gc="exact")]
   public dynamic class MovieClip extends Sprite
   {
       
      
      public function MovieClip()
      {
         super();
      }
      
      native public function get currentFrame() : int;
      
      native public function get framesLoaded() : int;
      
      native public function get totalFrames() : int;
      
      native public function get trackAsMenu() : Boolean;
      
      native public function set trackAsMenu(param1:Boolean) : void;
      
      native public function play() : void;
      
      native public function stop() : void;
      
      native public function nextFrame() : void;
      
      native public function prevFrame() : void;
      
      native public function gotoAndPlay(param1:Object, param2:String = null) : void;
      
      native public function gotoAndStop(param1:Object, param2:String = null) : void;
      
      [Inspectable(environment="none")]
      native public function addFrameScript(... rest) : void;
      
      native public function get scenes() : Array;
      
      native public function get currentScene() : Scene;
      
      native public function get currentLabel() : String;
      
      [Version("10")]
      native public function get currentFrameLabel() : String;
      
      public function get currentLabels() : Array
      {
         return this.currentScene.labels;
      }
      
      native public function prevScene() : void;
      
      native public function nextScene() : void;
      
      native public function get enabled() : Boolean;
      
      native public function set enabled(param1:Boolean) : void;
      
      [API("674")]
      native public function get isPlaying() : Boolean;
   }
}
