package flash.text
{
   [native(instance="TextFormatObject",methods="auto",cls="TextFormatClass",gc="exact")]
   public class TextFormat
   {
       
      
      public function TextFormat(font:String = null, size:Object = null, color:Object = null, bold:Object = null, italic:Object = null, underline:Object = null, url:String = null, target:String = null, align:String = null, leftMargin:Object = null, rightMargin:Object = null, indent:Object = null, leading:Object = null)
      {
         super();
         if(font != null)
         {
            this.font = font;
         }
         if(size != null)
         {
            this.size = size;
         }
         if(color != null)
         {
            this.color = color;
         }
         if(bold != null)
         {
            this.bold = bold;
         }
         if(italic != null)
         {
            this.italic = italic;
         }
         if(underline != null)
         {
            this.underline = underline;
         }
         if(url != null)
         {
            this.url = url;
         }
         if(target != null)
         {
            this.target = target;
         }
         if(align != null)
         {
            this.align = align;
         }
         if(leftMargin != null)
         {
            this.leftMargin = leftMargin;
         }
         if(rightMargin != null)
         {
            this.rightMargin = rightMargin;
         }
         if(indent != null)
         {
            this.indent = indent;
         }
         if(leading != null)
         {
            this.leading = leading;
         }
      }
      
      native public function get align() : String;
      
      native public function set align(param1:String) : void;
      
      native public function get blockIndent() : Object;
      
      native public function set blockIndent(param1:Object) : void;
      
      native public function get bold() : Object;
      
      native public function set bold(param1:Object) : void;
      
      native public function get bullet() : Object;
      
      native public function set bullet(param1:Object) : void;
      
      native public function get color() : Object;
      
      native public function set color(param1:Object) : void;
      
      [Inspectable(environment="none")]
      native public function get display() : String;
      
      native public function set display(param1:String) : void;
      
      native public function get font() : String;
      
      native public function set font(param1:String) : void;
      
      native public function get indent() : Object;
      
      native public function set indent(param1:Object) : void;
      
      native public function get italic() : Object;
      
      native public function set italic(param1:Object) : void;
      
      native public function get kerning() : Object;
      
      native public function set kerning(param1:Object) : void;
      
      native public function get leading() : Object;
      
      native public function set leading(param1:Object) : void;
      
      native public function get leftMargin() : Object;
      
      native public function set leftMargin(param1:Object) : void;
      
      native public function get letterSpacing() : Object;
      
      native public function set letterSpacing(param1:Object) : void;
      
      native public function get rightMargin() : Object;
      
      native public function set rightMargin(param1:Object) : void;
      
      native public function get size() : Object;
      
      native public function set size(param1:Object) : void;
      
      native public function get tabStops() : Array;
      
      native public function set tabStops(param1:Array) : void;
      
      native public function get target() : String;
      
      native public function set target(param1:String) : void;
      
      native public function get underline() : Object;
      
      native public function set underline(param1:Object) : void;
      
      native public function get url() : String;
      
      native public function set url(param1:String) : void;
   }
}
