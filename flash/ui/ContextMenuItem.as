package flash.ui
{
   import flash.display.NativeMenuItem;
   
   [native(instance="ContextMenuItemObject",methods="auto",cls="ContextMenuItemClass",gc="exact")]
   [Event(name="menuItemSelect",type="flash.events.ContextMenuEvent")]
   public final class ContextMenuItem extends NativeMenuItem
   {
       
      
      public function ContextMenuItem(caption:String, separatorBefore:Boolean = false, enabled:Boolean = true, visible:Boolean = true)
      {
         super();
         this.caption = caption;
         this.separatorBefore = separatorBefore;
         this.enabled = enabled;
         this.visible = visible;
      }
      
      native public function get caption() : String;
      
      native public function set caption(param1:String) : void;
      
      native public function get separatorBefore() : Boolean;
      
      native public function set separatorBefore(param1:Boolean) : void;
      
      native public function get visible() : Boolean;
      
      native public function set visible(param1:Boolean) : void;
      
      public function clone() : ContextMenuItem
      {
         var c:ContextMenuItem = new ContextMenuItem(this.caption,this.separatorBefore,this.enabled,this.visible);
         return c;
      }
   }
}
