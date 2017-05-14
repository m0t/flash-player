package flash.xml
{
   public class XMLDocument extends XMLNode
   {
      
      private static const kNoError:int = 0;
      
      private static const kEndOfDocument:int = -1;
      
      private static const kUnterminatedCdata:int = -2;
      
      private static const kUnterminatedXmlDeclaration:int = -3;
      
      private static const kUnterminatedDoctypeDeclaration:int = -4;
      
      private static const kUnterminatedComment:int = -5;
      
      private static const kMalformedElement:int = -6;
      
      private static const kOutOfMemory:int = -7;
      
      private static const kUnterminatedAttributeValue:int = -8;
      
      private static const kUnterminatedElement:int = -9;
      
      private static const kElementNeverBegun:int = -10;
       
      
      public var xmlDecl:Object = null;
      
      public var docTypeDecl:Object = null;
      
      public var idMap:Object;
      
      public var ignoreWhite:Boolean = false;
      
      public function XMLDocument(source:String = null)
      {
         this.idMap = {};
         super(1,"");
         nodeName = null;
         if(source != null)
         {
            this.parseXML(source);
         }
      }
      
      public function createElement(name:String) : XMLNode
      {
         return new XMLNode(1,name);
      }
      
      public function createTextNode(text:String) : XMLNode
      {
         return new XMLNode(3,text);
      }
      
      override public function toString() : String
      {
         var node:XMLNode = null;
         var s:String = "";
         if(this.xmlDecl != null)
         {
            s = s + this.xmlDecl;
         }
         if(this.docTypeDecl != null)
         {
            s = s + this.docTypeDecl;
         }
         if(hasChildNodes())
         {
            node = firstChild;
            while(node != null)
            {
               s = s + node.toString();
               node = node.nextSibling;
            }
         }
         else
         {
            s = s + "<>";
         }
         return s;
      }
      
      public function parseXML(param1:String) : void
      {
         var _loc4_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:XMLNode = null;
         var _loc10_:Object = null;
         firstChild = null;
         lastChild = null;
         childNodes.splice(0);
         attributes = null;
         this.xmlDecl = null;
         this.docTypeDecl = null;
         var _loc2_:XMLParser = new XMLParser();
         _loc2_.startParse(param1,this.ignoreWhite);
         var _loc3_:XMLNode = this;
         var _loc5_:XMLTag = new XMLTag();
         var _loc6_:int = 0;
         while((_loc4_ = _loc2_.getNext(_loc5_)) == kNoError)
         {
            _loc7_ = _loc5_.type;
            _loc8_ = _loc5_.value;
            if(_loc7_ === 1)
            {
               _loc9_ = new XMLNode(1,_loc8_);
               if(_loc5_.attrs !== null)
               {
                  _loc10_ = _loc5_.attrs;
                  if("id" in _loc10_)
                  {
                     this.idMap[_loc10_.id] = _loc9_;
                  }
                  _loc9_.attributes = _loc10_;
               }
               if(_loc8_.charCodeAt(0) == 47)
               {
                  if(_loc8_.substr(1) === _loc3_.nodeName)
                  {
                     _loc3_ = _loc3_.parentNode;
                  }
                  else
                  {
                     _loc6_ = kElementNeverBegun;
                  }
               }
               else
               {
                  _loc3_.appendChild(_loc9_);
                  if(!_loc5_.empty)
                  {
                     _loc3_ = _loc9_;
                  }
               }
            }
            else if(_loc7_ === 3 || _loc7_ === 4)
            {
               _loc9_ = new XMLNode(3,_loc8_);
               _loc3_.appendChild(_loc9_);
            }
            else if(_loc7_ === 13)
            {
               if(this.xmlDecl == null)
               {
                  this.xmlDecl = "";
               }
               this.xmlDecl = this.xmlDecl + ("<?" + _loc8_ + "?>");
            }
            else if(_loc7_ === 10)
            {
               this.docTypeDecl = _loc8_;
            }
         }
         if(_loc4_ == kEndOfDocument)
         {
            _loc4_ = kNoError;
         }
         else
         {
            _loc6_ = _loc4_;
         }
         if(_loc3_ != this && _loc4_ == kNoError)
         {
            _loc6_ = kUnterminatedElement;
         }
         if(_loc6_ != kNoError)
         {
            nodeType = 1;
            nextSibling = null;
            previousSibling = null;
            parentNode = null;
            firstChild = null;
            lastChild = null;
            childNodes.splice(0);
            attributes = null;
            nodeName = "";
            nodeValue = null;
            switch(_loc6_)
            {
               case kUnterminatedCdata:
                  Error.throwError(Error,1091);
                  break;
               case kUnterminatedXmlDeclaration:
                  Error.throwError(Error,1092);
                  break;
               case kUnterminatedDoctypeDeclaration:
                  Error.throwError(Error,1093);
                  break;
               case kUnterminatedComment:
                  Error.throwError(Error,1094);
                  break;
               case kMalformedElement:
                  Error.throwError(Error,1090);
                  break;
               case kOutOfMemory:
                  Error.throwError(Error,1000);
                  break;
               case kUnterminatedAttributeValue:
                  Error.throwError(Error,1095);
                  break;
               case kUnterminatedElement:
                  Error.throwError(Error,1096);
                  break;
               case kElementNeverBegun:
                  Error.throwError(Error,2070);
                  break;
               default:
                  Error.throwError(Error,2071);
            }
         }
      }
   }
}
