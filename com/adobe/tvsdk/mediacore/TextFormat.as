package com.adobe.tvsdk.mediacore
{
   [native(instance="PSDKTextFormatObject",methods="auto",cls="PSDKTextFormatClass")]
   [API("712")]
   public class TextFormat
   {
      
      public static const DEFAULT_OPACITY:int = -1;
      
      public static const FONT_DEFAULT:int = 0;
      
      public static const MONOSPACE_WITH_SERIFS:int = 1;
      
      public static const MONOSPACED_WITHOUT_SERIFS:int = 2;
      
      public static const PROPORTIONAL_WITH_SERIFS:int = 3;
      
      public static const PROPORTIONAL_WITHOUT_SERIFS:int = 4;
      
      public static const CASUAL:int = 5;
      
      public static const CURSIVE:int = 6;
      
      public static const SMALL_CAPITALS:int = 7;
      
      public static const COLOR_DEFAULT:int = 0;
      
      public static const BLACK:int = 1;
      
      public static const GRAY:int = 2;
      
      public static const WHITE:int = 3;
      
      public static const BRIGHT_WHITE:int = 4;
      
      public static const DARK_RED:int = 5;
      
      public static const RED:int = 6;
      
      public static const BRIGHT_RED:int = 7;
      
      public static const DARK_GREEN:int = 8;
      
      public static const GREEN:int = 9;
      
      public static const BRIGHT_GREEN:int = 10;
      
      public static const DARK_BLUE:int = 11;
      
      public static const BLUE:int = 12;
      
      public static const BRIGHT_BLUE:int = 13;
      
      public static const DARK_YELLOW:int = 14;
      
      public static const YELLOW:int = 15;
      
      public static const BRIGHT_YELLOW:int = 16;
      
      public static const DARK_MAGENTA:int = 17;
      
      public static const MAGENTA:int = 18;
      
      public static const BRIGHT_MAGENTA:int = 19;
      
      public static const DARK_CYAN:int = 20;
      
      public static const CYAN:int = 21;
      
      public static const BRIGHT_CYAN:int = 22;
      
      public static const SIZE_DEFAULT:int = 0;
      
      public static const SMALL:int = 1;
      
      public static const MEDIUM:int = 2;
      
      public static const LARGE:int = 3;
      
      public static const FONT_EDGE_DEFAULT:int = 1;
      
      public static const NONE:int = 2;
      
      public static const RAISED:int = 3;
      
      public static const DEPRESSED:int = 4;
      
      public static const UNIFORM:int = 5;
      
      public static const LEFT_DROP_SHADOW:int = 6;
      
      public static const RIGHT_DROP_SHADOW:int = 7;
       
      
      public function TextFormat(eFont:int = 0, eFontColor:int = 0, eEdgeColor:int = 0, eFontEdge:int = 1, eBackgroundColor:int = 0, eFillColor:int = 0, eSize:int = 0, nFontOpacity:int = -1, nBackgroundOpacity:int = -1, nFillOpacity:int = -1, sBottomInset:String = "default", sSafeArea:String = "default")
      {
         super();
         this.ctor(eFont,eFontColor,eEdgeColor,eFontEdge,eBackgroundColor,eFillColor,eSize,nFontOpacity,nBackgroundOpacity,nFillOpacity,sBottomInset,sSafeArea);
      }
      
      native private function ctor(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 1, param5:int = 0, param6:int = 0, param7:int = 0, param8:int = -1, param9:int = -1, param10:int = -1, param11:String = "default", param12:String = "default") : void;
      
      native public final function set font(param1:int) : void;
      
      native public final function get font() : int;
      
      native public final function set size(param1:int) : void;
      
      native public final function get size() : int;
      
      native public final function set fontEdge(param1:int) : void;
      
      native public final function get fontEdge() : int;
      
      native public final function set fontColor(param1:int) : void;
      
      native public final function get fontColor() : int;
      
      native public final function set backgroundColor(param1:int) : void;
      
      native public final function get backgroundColor() : int;
      
      native public final function set fillColor(param1:int) : void;
      
      native public final function get fillColor() : int;
      
      native public final function set edgeColor(param1:int) : void;
      
      native public final function get edgeColor() : int;
      
      native public final function set fontOpacity(param1:int) : void;
      
      native public final function get fontOpacity() : int;
      
      native public final function set backgroundOpacity(param1:int) : void;
      
      native public final function get backgroundOpacity() : int;
      
      native public final function set fillOpacity(param1:int) : void;
      
      native public final function get fillOpacity() : int;
      
      native public final function set bottomInset(param1:String) : void;
      
      native public final function get bottomInset() : String;
      
      native public final function set safeArea(param1:String) : void;
      
      native public final function get safeArea() : String;
   }
}
