package flash.text.engine
{
   [native(instance="FontDescriptionObject",methods="auto",cls="FontDescriptionClass")]
   [Version("10")]
   public final class FontDescription
   {
       
      
      public function FontDescription(fontName:String = "_serif", fontWeight:String = "normal", fontPosture:String = "normal", fontLookup:String = "device", renderingMode:String = "cff", cffHinting:String = "horizontalStem")
      {
         super();
         this.fontName = fontName;
         this.fontWeight = fontWeight;
         this.fontPosture = fontPosture;
         this.fontLookup = fontLookup;
         this.renderingMode = renderingMode;
         this.cffHinting = cffHinting;
      }
      
      native public static function isFontCompatible(param1:String, param2:String, param3:String) : Boolean;
      
      [Version("10.1")]
      native public static function isDeviceFontCompatible(param1:String, param2:String, param3:String) : Boolean;
      
      native public function get renderingMode() : String;
      
      native public function set renderingMode(param1:String) : void;
      
      native public function get fontLookup() : String;
      
      native public function set fontLookup(param1:String) : void;
      
      native public function get fontName() : String;
      
      native public function set fontName(param1:String) : void;
      
      native public function get fontPosture() : String;
      
      native public function set fontPosture(param1:String) : void;
      
      native public function get fontWeight() : String;
      
      native public function set fontWeight(param1:String) : void;
      
      native public function get cffHinting() : String;
      
      native public function set cffHinting(param1:String) : void;
      
      native public function get locked() : Boolean;
      
      native public function set locked(param1:Boolean) : void;
      
      public function clone() : FontDescription
      {
         return new FontDescription(this.fontName,this.fontWeight,this.fontPosture,this.fontLookup,this.renderingMode,this.cffHinting);
      }
   }
}
