package flash.text.engine
{
   [native(instance="TextBlockObject",methods="auto",cls="TextBlockClass")]
   [Version("10")]
   public final class TextBlock
   {
       
      
      public var userData;
      
      public function TextBlock(content:ContentElement = null, tabStops:Vector.<TabStop> = null, textJustifier:TextJustifier = null, lineRotation:String = "rotate0", baselineZero:String = "roman", bidiLevel:int = 0, applyNonLinearFontScaling:Boolean = true, baselineFontDescription:FontDescription = null, baselineFontSize:Number = 12.0)
      {
         super();
         if(content)
         {
            this.content = content;
         }
         if(tabStops)
         {
            this.tabStops = tabStops;
         }
         this.textJustifier = Boolean(textJustifier)?textJustifier:TextJustifier.getJustifierForLocale("en");
         this.lineRotation = lineRotation;
         if(baselineZero)
         {
            this.baselineZero = baselineZero;
         }
         this.bidiLevel = bidiLevel;
         this.applyNonLinearFontScaling = applyNonLinearFontScaling;
         if(baselineFontDescription)
         {
            this.baselineFontDescription = baselineFontDescription;
            this.baselineFontSize = baselineFontSize;
         }
      }
      
      native public function get applyNonLinearFontScaling() : Boolean;
      
      native public function set applyNonLinearFontScaling(param1:Boolean) : void;
      
      native public function get baselineFontDescription() : FontDescription;
      
      native public function set baselineFontDescription(param1:FontDescription) : void;
      
      native public function get baselineFontSize() : Number;
      
      native public function set baselineFontSize(param1:Number) : void;
      
      native public function get baselineZero() : String;
      
      native public function set baselineZero(param1:String) : void;
      
      native public function get content() : ContentElement;
      
      native public function set content(param1:ContentElement) : void;
      
      native public function get bidiLevel() : int;
      
      native public function set bidiLevel(param1:int) : void;
      
      native public function get firstInvalidLine() : TextLine;
      
      native public function get firstLine() : TextLine;
      
      native public function get lastLine() : TextLine;
      
      public function get textJustifier() : TextJustifier
      {
         return this.getTextJustifier().clone();
      }
      
      public function set textJustifier(value:TextJustifier) : void
      {
         var myJustifier:TextJustifier = Boolean(value)?value.clone():null;
         this.setTextJustifier(myJustifier);
      }
      
      native private function getTextJustifier() : TextJustifier;
      
      native private function setTextJustifier(param1:TextJustifier) : void;
      
      native public function get textLineCreationResult() : String;
      
      native public function get lineRotation() : String;
      
      native public function set lineRotation(param1:String) : void;
      
      public function get tabStops() : Vector.<TabStop>
      {
         var i:uint = 0;
         var t:TabStop = null;
         var newT:TabStop = null;
         var myTabs:Vector.<TabStop> = this.getTabStops();
         var retTabs:Vector.<TabStop> = null;
         if(myTabs)
         {
            retTabs = new Vector.<TabStop>();
            for(i = 0; i < myTabs.length; i++)
            {
               t = myTabs[i];
               newT = new TabStop(t.alignment,t.position,t.decimalAlignmentToken);
               retTabs.push(t);
            }
         }
         return retTabs;
      }
      
      public function set tabStops(value:Vector.<TabStop>) : void
      {
         var i:uint = 0;
         var t:TabStop = null;
         var newT:TabStop = null;
         var myTabs:Vector.<TabStop> = null;
         if(value)
         {
            myTabs = new Vector.<TabStop>();
            for(i = 0; i < value.length; i++)
            {
               t = value[i];
               newT = new TabStop(t.alignment,t.position,t.decimalAlignmentToken);
               myTabs.push(t);
            }
         }
         this.setTabStops(myTabs);
      }
      
      native private function getTabStops() : Vector.<TabStop>;
      
      native private function setTabStops(param1:Vector.<TabStop>) : void;
      
      native public function findNextAtomBoundary(param1:int) : int;
      
      native public function findPreviousAtomBoundary(param1:int) : int;
      
      native public function findNextWordBoundary(param1:int) : int;
      
      native public function findPreviousWordBoundary(param1:int) : int;
      
      native public function getTextLineAtCharIndex(param1:int) : TextLine;
      
      public function createTextLine(previousLine:TextLine = null, width:Number = 1000000, lineOffset:Number = 0.0, fitSomething:Boolean = false) : TextLine
      {
         if(this.content == null)
         {
            return null;
         }
         if(previousLine != null && previousLine.validity != TextLineValidity.VALID)
         {
            Error.throwError(ArgumentError,2004,"previousLine");
         }
         if(previousLine != null && previousLine.textBlock != this)
         {
            Error.throwError(ArgumentError,2004,"previousLine");
         }
         if(width < 0 && fitSomething == false || width > TextLine.MAX_LINE_WIDTH)
         {
            Error.throwError(ArgumentError,2004,"width");
         }
         if(width == 0 && fitSomething == false)
         {
            return null;
         }
         return this.DoCreateTextLine(previousLine,width,lineOffset,fitSomething,null);
      }
      
      [Version("10.1")]
      public function recreateTextLine(textLine:TextLine, previousLine:TextLine = null, width:Number = 1000000, lineOffset:Number = 0.0, fitSomething:Boolean = false) : TextLine
      {
         if(textLine == null)
         {
            Error.throwError(ArgumentError,2004,"textLine");
         }
         if(previousLine != null && previousLine.validity != TextLineValidity.VALID)
         {
            Error.throwError(ArgumentError,2004,"previousLine");
         }
         if(previousLine != null && previousLine.textBlock != this)
         {
            Error.throwError(ArgumentError,2004,"previousLine");
         }
         if(previousLine != null && previousLine == textLine)
         {
            Error.throwError(ArgumentError,2004,"previousLine");
         }
         if(width < 0 && fitSomething == false || width > TextLine.MAX_LINE_WIDTH)
         {
            Error.throwError(ArgumentError,2004,"width");
         }
         textLine.userData = null;
         return this.DoCreateTextLine(previousLine,width,lineOffset,fitSomething,textLine);
      }
      
      native private function DoCreateTextLine(param1:TextLine, param2:Number, param3:Number = 0.0, param4:Boolean = false, param5:TextLine = null) : TextLine;
      
      [Version("10.1")]
      native public function releaseLineCreationData() : void;
      
      native public function releaseLines(param1:TextLine, param2:TextLine) : void;
      
      native public function dump() : String;
   }
}
