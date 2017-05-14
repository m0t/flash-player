package flash.ui
{
   import flash.display.NativeMenu;
   import flash.net.URLRequest;
   
   [native(instance="ContextMenuObject",methods="auto",cls="ContextMenuClass",construct="check",gc="exact")]
   [Event(name="menuSelect",type="flash.events.ContextMenuEvent")]
   public final class ContextMenu extends NativeMenu
   {
       
      
      public function ContextMenu()
      {
         super();
         this.builtInItems = new ContextMenuBuiltInItems();
         this.customItems = new Array();
      }
      
      [API("667")]
      public static function get isSupported() : Boolean
      {
         return _checkSupported();
      }
      
      native private static function _checkSupported() : Boolean;
      
      [cppcall]
      public function hideBuiltInItems() : void
      {
         var items:ContextMenuBuiltInItems = this.builtInItems;
         if(items != null)
         {
            items.save = false;
            items.zoom = false;
            items.quality = false;
            items.play = false;
            items.loop = false;
            items.rewind = false;
            items.forwardAndBack = false;
            items.print = false;
         }
      }
      
      native public function get builtInItems() : ContextMenuBuiltInItems;
      
      native public function set builtInItems(param1:ContextMenuBuiltInItems) : void;
      
      native public function get customItems() : Array;
      
      native public function set customItems(param1:Array) : void;
      
      [Version("10")]
      native public function get link() : URLRequest;
      
      [Version("10")]
      native public function set link(param1:URLRequest) : void;
      
      [Version("10")]
      native public function get clipboardMenu() : Boolean;
      
      [Version("10")]
      native public function set clipboardMenu(param1:Boolean) : void;
      
      [Version("10")]
      native public function get clipboardItems() : ContextMenuClipboardItems;
      
      [Version("10")]
      native public function set clipboardItems(param1:ContextMenuClipboardItems) : void;
      
      native private function cloneLinkAndClipboardProperties(param1:ContextMenu) : void;
      
      public function clone() : ContextMenu
      {
         var result:ContextMenu = new ContextMenu();
         result.builtInItems = this.builtInItems.clone();
         this.cloneLinkAndClipboardProperties(result);
         for(var i:int = 0; i < this.customItems.length; i++)
         {
            result.customItems.push(this.customItems[i].clone());
         }
         return result;
      }
   }
}
