package flash.text
{
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.geom.Rectangle;
   
   [native(instance="TextFieldObject",methods="auto",cls="TextFieldClass",gc="exact")]
   [Event(name="textInteractionModeChange",type="flash.events.Event")]
   [Event(name="textInput",type="flash.events.TextEvent")]
   [Event(name="scroll",type="flash.events.Event")]
   [Event(name="link",type="flash.events.TextEvent")]
   [Event(name="change",type="flash.events.Event")]
   public class TextField extends InteractiveObject
   {
      
      private static var richTextFields:Array = ["font","size","color","bold","italic","underline","url","target","align","leftMargin","rightMargin","indent","leading","blockIndent","kerning","letterSpacing","display"];
       
      
      public function TextField()
      {
         super();
      }
      
      [Version("10")]
      native public static function isFontCompatible(param1:String, param2:String) : Boolean;
      
      native public function get alwaysShowSelection() : Boolean;
      
      native public function set alwaysShowSelection(param1:Boolean) : void;
      
      native public function get antiAliasType() : String;
      
      native public function set antiAliasType(param1:String) : void;
      
      native public function get autoSize() : String;
      
      native public function set autoSize(param1:String) : void;
      
      native public function get background() : Boolean;
      
      native public function set background(param1:Boolean) : void;
      
      native public function get backgroundColor() : uint;
      
      native public function set backgroundColor(param1:uint) : void;
      
      native public function get border() : Boolean;
      
      native public function set border(param1:Boolean) : void;
      
      native public function get borderColor() : uint;
      
      native public function set borderColor(param1:uint) : void;
      
      native public function get bottomScrollV() : int;
      
      native public function get caretIndex() : int;
      
      native public function get condenseWhite() : Boolean;
      
      native public function set condenseWhite(param1:Boolean) : void;
      
      native public function get defaultTextFormat() : TextFormat;
      
      native public function set defaultTextFormat(param1:TextFormat) : void;
      
      native public function get embedFonts() : Boolean;
      
      native public function set embedFonts(param1:Boolean) : void;
      
      native public function get gridFitType() : String;
      
      native public function set gridFitType(param1:String) : void;
      
      native public function get htmlText() : String;
      
      native public function set htmlText(param1:String) : void;
      
      native public function get length() : int;
      
      [API("670")]
      native public function get textInteractionMode() : String;
      
      native public function get maxChars() : int;
      
      native public function set maxChars(param1:int) : void;
      
      native public function get maxScrollH() : int;
      
      native public function get maxScrollV() : int;
      
      native public function get mouseWheelEnabled() : Boolean;
      
      native public function set mouseWheelEnabled(param1:Boolean) : void;
      
      native public function get multiline() : Boolean;
      
      native public function set multiline(param1:Boolean) : void;
      
      native public function get numLines() : int;
      
      native public function get displayAsPassword() : Boolean;
      
      native public function set displayAsPassword(param1:Boolean) : void;
      
      native public function get restrict() : String;
      
      native public function set restrict(param1:String) : void;
      
      native public function get scrollH() : int;
      
      native public function set scrollH(param1:int) : void;
      
      native public function get scrollV() : int;
      
      native public function set scrollV(param1:int) : void;
      
      native public function get selectable() : Boolean;
      
      native public function set selectable(param1:Boolean) : void;
      
      [Inspectable(environment="none")]
      public function get selectedText() : String
      {
         return this.text.substring(this.selectionBeginIndex,this.selectionEndIndex);
      }
      
      native public function get selectionBeginIndex() : int;
      
      native public function get selectionEndIndex() : int;
      
      native public function get sharpness() : Number;
      
      native public function set sharpness(param1:Number) : void;
      
      native public function get styleSheet() : StyleSheet;
      
      native public function set styleSheet(param1:StyleSheet) : void;
      
      native public function get text() : String;
      
      native public function set text(param1:String) : void;
      
      native public function get textColor() : uint;
      
      native public function set textColor(param1:uint) : void;
      
      native public function get textHeight() : Number;
      
      native public function get textWidth() : Number;
      
      native public function get thickness() : Number;
      
      native public function set thickness(param1:Number) : void;
      
      native public function get type() : String;
      
      native public function set type(param1:String) : void;
      
      native public function get wordWrap() : Boolean;
      
      native public function set wordWrap(param1:Boolean) : void;
      
      public function appendText(newText:String) : void
      {
         this.replaceText(this.text.length,this.text.length,newText);
      }
      
      [cppcall]
      function copyRichText() : String
      {
         return this.getXMLText(this.selectionBeginIndex,this.selectionEndIndex);
      }
      
      native public function getCharBoundaries(param1:int) : Rectangle;
      
      native public function getCharIndexAtPoint(param1:Number, param2:Number) : int;
      
      native private function getCharIndexNearestPoint(param1:Number, param2:Number) : int;
      
      native public function getFirstCharInParagraph(param1:int) : int;
      
      native public function getLineIndexAtPoint(param1:Number, param2:Number) : int;
      
      native public function getLineIndexOfChar(param1:int) : int;
      
      native public function getLineLength(param1:int) : int;
      
      native public function getLineMetrics(param1:int) : TextLineMetrics;
      
      native public function getLineOffset(param1:int) : int;
      
      native public function getLineText(param1:int) : String;
      
      native public function getParagraphLength(param1:int) : int;
      
      native public function getTextFormat(param1:int = -1, param2:int = -1) : TextFormat;
      
      [Inspectable(environment="none")]
      native public function getTextRuns(param1:int = 0, param2:int = 2147483647) : Array;
      
      [Inspectable(environment="none")]
      native public function getRawText() : String;
      
      [Inspectable(environment="none")]
      public function getXMLText(beginIndex:int = 0, endIndex:int = 2147483647) : String
      {
         var run:TextRun = null;
         var format:TextFormat = null;
         var text:String = null;
         var runXML:XML = null;
         var j:uint = 0;
         var name:String = null;
         var value:* = undefined;
         var runs:Array = this.getTextRuns(beginIndex,endIndex);
         var entireText:String = this.getRawText();
         var result:XML = <flashrichtext version="1"/>;
         for(var i:uint = 0; i < runs.length; i++)
         {
            run = runs[i];
            format = run.textFormat;
            text = entireText.substring(run.beginIndex,run.endIndex);
            text = "(" + text + ")";
            runXML = <textformat>{text}</textformat>;
            for(j = 0; j < richTextFields.length; j++)
            {
               name = richTextFields[j];
               value = format[name];
               if(value != null)
               {
                  runXML["@" + name] = value;
               }
            }
            result.flashrichtext = result.flashrichtext + runXML;
         }
         return result.toXMLString();
      }
      
      [Inspectable(environment="none")]
      public function insertXMLText(beginIndex:int, endIndex:int, richText:String, pasting:Boolean = false) : void
      {
         var run:XML = null;
         var temp:int = 0;
         var attributes:XMLList = null;
         var format:TextFormat = null;
         var attribute:XML = null;
         var text:String = null;
         var name:String = null;
         var value:String = null;
         var spaceAvail:int = 0;
         var richTextXML:XML = XML(richText);
         if(richTextXML.@version != "1")
         {
            Error.throwError(Error,2138);
         }
         if(beginIndex > endIndex)
         {
            temp = beginIndex;
            beginIndex = endIndex;
            endIndex = temp;
         }
         var first:Boolean = true;
         for each(run in richTextXML..textformat)
         {
            attributes = run.attributes();
            format = new TextFormat();
            for each(attribute in attributes)
            {
               name = attribute.name().localName;
               value = String(attribute);
               if(name == "bold" || name == "italic" || name == "underline")
               {
                  format[name] = value == "true";
               }
               else
               {
                  format[name] = value;
               }
            }
            text = String(run.children());
            text = text.substring(1,text.length - 1);
            if(this.maxChars > 0 && pasting == true)
            {
               spaceAvail = this.maxChars - this.length + (endIndex - beginIndex);
               if(spaceAvail < text.length)
               {
                  if(spaceAvail <= 0)
                  {
                     return;
                  }
                  text = text.substring(0,spaceAvail);
               }
            }
            this.replaceText(beginIndex,endIndex,text);
            this.setTextFormat(format,beginIndex,beginIndex + text.length);
            beginIndex = beginIndex + text.length;
            endIndex = beginIndex;
            if(pasting)
            {
               this.setSelection(beginIndex,endIndex);
            }
            first = false;
         }
         if(first)
         {
            this.replaceText(beginIndex,endIndex,"");
         }
      }
      
      [cppcall]
      function pasteRichText(richText:String) : Boolean
      {
         if(richText == null)
         {
            Error.throwError(TypeError,2007,"richText");
         }
         try
         {
            this.insertXMLText(this.selectionBeginIndex,this.selectionEndIndex,richText,true);
         }
         catch(e:Error)
         {
            return false;
         }
         return true;
      }
      
      native public function replaceSelectedText(param1:String) : void;
      
      native public function replaceText(param1:int, param2:int, param3:String) : void;
      
      native public function setSelection(param1:int, param2:int) : void;
      
      native public function setTextFormat(param1:TextFormat, param2:int = -1, param3:int = -1) : void;
      
      native public function getImageReference(param1:String) : DisplayObject;
      
      native public function get useRichTextClipboard() : Boolean;
      
      native public function set useRichTextClipboard(param1:Boolean) : void;
   }
}
