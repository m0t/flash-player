package flash.text.engine
{
   [native(instance="ElementFormatObject",methods="auto",cls="ElementFormatClass")]
   [Version("10")]
   public final class ElementFormat
   {
       
      
      public function ElementFormat(fontDescription:FontDescription = null, fontSize:Number = 12.0, color:uint = 0, alpha:Number = 1.0, textRotation:String = "auto", dominantBaseline:String = "roman", alignmentBaseline:String = "useDominantBaseline", baselineShift:Number = 0.0, kerning:String = "on", trackingRight:Number = 0.0, trackingLeft:Number = 0.0, locale:String = "en", breakOpportunity:String = "auto", digitCase:String = "default", digitWidth:String = "default", ligatureLevel:String = "common", typographicCase:String = "default")
      {
         super();
         this.fontDescription = Boolean(fontDescription)?fontDescription:new FontDescription();
         this.fontSize = fontSize;
         this.color = color;
         this.alpha = alpha;
         this.textRotation = textRotation;
         this.dominantBaseline = dominantBaseline;
         this.alignmentBaseline = alignmentBaseline;
         this.baselineShift = baselineShift;
         this.kerning = kerning;
         this.trackingRight = trackingRight;
         this.trackingLeft = trackingLeft;
         this.locale = locale;
         this.breakOpportunity = breakOpportunity;
         this.digitCase = digitCase;
         this.digitWidth = digitWidth;
         this.ligatureLevel = ligatureLevel;
         this.typographicCase = typographicCase;
      }
      
      native public function get alignmentBaseline() : String;
      
      native public function set alignmentBaseline(param1:String) : void;
      
      native public function get alpha() : Number;
      
      native public function set alpha(param1:Number) : void;
      
      native public function get baselineShift() : Number;
      
      native public function set baselineShift(param1:Number) : void;
      
      native public function get breakOpportunity() : String;
      
      native public function set breakOpportunity(param1:String) : void;
      
      native public function get color() : uint;
      
      native public function set color(param1:uint) : void;
      
      native public function get dominantBaseline() : String;
      
      native public function set dominantBaseline(param1:String) : void;
      
      native public function get fontDescription() : FontDescription;
      
      native public function set fontDescription(param1:FontDescription) : void;
      
      native public function get digitCase() : String;
      
      native public function set digitCase(param1:String) : void;
      
      native public function get digitWidth() : String;
      
      native public function set digitWidth(param1:String) : void;
      
      native public function get ligatureLevel() : String;
      
      native public function set ligatureLevel(param1:String) : void;
      
      native public function get fontSize() : Number;
      
      native public function set fontSize(param1:Number) : void;
      
      native public function get kerning() : String;
      
      native public function set kerning(param1:String) : void;
      
      native public function get locale() : String;
      
      native public function set locale(param1:String) : void;
      
      native public function get textRotation() : String;
      
      native public function set textRotation(param1:String) : void;
      
      native public function get trackingRight() : Number;
      
      native public function set trackingRight(param1:Number) : void;
      
      native public function get trackingLeft() : Number;
      
      native public function set trackingLeft(param1:Number) : void;
      
      native public function get typographicCase() : String;
      
      native public function set typographicCase(param1:String) : void;
      
      native public function get locked() : Boolean;
      
      native public function set locked(param1:Boolean) : void;
      
      native public function getFontMetrics() : FontMetrics;
      
      public function clone() : ElementFormat
      {
         return new ElementFormat(Boolean(this.fontDescription)?this.fontDescription.clone():null,this.fontSize,this.color,this.alpha,this.textRotation,this.dominantBaseline,this.alignmentBaseline,this.baselineShift,this.kerning,this.trackingRight,this.trackingLeft,this.locale,this.breakOpportunity,this.digitCase,this.digitWidth,this.ligatureLevel,this.typographicCase);
      }
   }
}
