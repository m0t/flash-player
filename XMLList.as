package
{
   use namespace AS3;
   
   [native(instance="XMLListObject",methods="auto",cls="XMLListClass",construct="override",gc="exact")]
   public final dynamic class XMLList
   {
      
      public static const length = 1;
      
      {
         prototype.valueOf = Object.prototype.valueOf;
         prototype.hasOwnProperty = function(P:* = undefined):Boolean
         {
            if(this === prototype)
            {
               return this.hasOwnProperty(P);
            }
            var x:XMLList = this;
            return x.hasOwnProperty(P);
         };
         prototype.propertyIsEnumerable = function(P:* = undefined):Boolean
         {
            if(this === prototype)
            {
               return this.propertyIsEnumerable(P);
            }
            var x:XMLList = this;
            return x.propertyIsEnumerable(P);
         };
         prototype.toString = function():String
         {
            if(this === prototype)
            {
               return "";
            }
            var x:XMLList = this;
            return x.toString();
         };
         prototype.addNamespace = function(ns:*):XML
         {
            var x:XMLList = this;
            return x.addNamespace(ns);
         };
         prototype.appendChild = function(child:*):XML
         {
            var x:XMLList = this;
            return x.appendChild(child);
         };
         prototype.attribute = function(arg:*):XMLList
         {
            var x:XMLList = this;
            return x.attribute(arg);
         };
         prototype.attributes = function():XMLList
         {
            var x:XMLList = this;
            return x.attributes();
         };
         prototype.child = function(propertyName:*):XMLList
         {
            var x:XMLList = this;
            return x.child(propertyName);
         };
         prototype.childIndex = function():int
         {
            var x:XMLList = this;
            return x.childIndex();
         };
         prototype.children = function():XMLList
         {
            var x:XMLList = this;
            return x.children();
         };
         prototype.comments = function():XMLList
         {
            var x:XMLList = this;
            return x.comments();
         };
         prototype.contains = function(value:*):Boolean
         {
            var x:XMLList = this;
            return x.contains(value);
         };
         prototype.copy = function():XMLList
         {
            var x:XMLList = this;
            return x.copy();
         };
         prototype.descendants = function(name:* = "*"):XMLList
         {
            var x:XMLList = this;
            return x.descendants(name);
         };
         prototype.elements = function(name:* = "*"):XMLList
         {
            var x:XMLList = this;
            return x.elements(name);
         };
         prototype.hasComplexContent = function():Boolean
         {
            var x:XMLList = this;
            return x.hasComplexContent();
         };
         prototype.hasSimpleContent = function():Boolean
         {
            var x:XMLList = this;
            return x.hasSimpleContent();
         };
         prototype.inScopeNamespaces = function():Array
         {
            var x:XMLList = this;
            return x.inScopeNamespaces();
         };
         prototype.insertChildAfter = function(child1:*, child2:*):*
         {
            var x:XMLList = this;
            return x.insertChildAfter(child1,child2);
         };
         prototype.insertChildBefore = function(child1:*, child2:*):*
         {
            var x:XMLList = this;
            return x.insertChildBefore(child1,child2);
         };
         prototype.length = function():int
         {
            var x:XMLList = this;
            return x.length();
         };
         prototype.localName = function():Object
         {
            var x:XMLList = this;
            return x.localName();
         };
         prototype.name = function():Object
         {
            var x:XMLList = this;
            return x.name();
         };
         prototype.namespace = function(prefix:* = null):*
         {
            var x:XMLList = this;
            return x.namespace.apply(x,arguments);
         };
         prototype.namespaceDeclarations = function():Array
         {
            var x:XMLList = this;
            return x.namespaceDeclarations();
         };
         prototype.nodeKind = function():String
         {
            var x:XMLList = this;
            return x.nodeKind();
         };
         prototype.normalize = function():XMLList
         {
            var x:XMLList = this;
            return x.normalize();
         };
         prototype.parent = function():*
         {
            var x:XMLList = this;
            return x.parent();
         };
         prototype.processingInstructions = function(name:* = "*"):XMLList
         {
            var x:XMLList = this;
            return x.processingInstructions(name);
         };
         prototype.prependChild = function(value:*):XML
         {
            var x:XMLList = this;
            return x.prependChild(value);
         };
         prototype.removeNamespace = function(ns:*):XML
         {
            var x:XMLList = this;
            return x.removeNamespace(ns);
         };
         prototype.replace = function(propertyName:*, value:*):XML
         {
            var x:XMLList = this;
            return x.replace(propertyName,value);
         };
         prototype.setChildren = function(value:*):XML
         {
            var x:XMLList = this;
            return x.setChildren(value);
         };
         prototype.setLocalName = function(name:*):void
         {
            var x:XMLList = this;
            x.setLocalName(name);
         };
         prototype.setName = function(name:*):void
         {
            var x:XMLList = this;
            x.setName(name);
         };
         prototype.setNamespace = function(ns:*):void
         {
            var x:XMLList = this;
            x.setNamespace(ns);
         };
         prototype.text = function():XMLList
         {
            var x:XMLList = this;
            return x.text();
         };
         prototype.toXMLString = function():String
         {
            var x:XMLList = this;
            return x.toXMLString();
         };
         prototype.toJSON = function(k:String):*
         {
            return "XMLList";
         };
         _dontEnumPrototype(prototype);
      }
      
      public function XMLList(value:* = undefined)
      {
         super();
      }
      
      native AS3 function toString() : String;
      
      AS3 function valueOf() : XMLList
      {
         return this;
      }
      
      native override AS3 function hasOwnProperty(param1:* = undefined) : Boolean;
      
      native override AS3 function propertyIsEnumerable(param1:* = undefined) : Boolean;
      
      native AS3 function attribute(param1:*) : XMLList;
      
      native AS3 function attributes() : XMLList;
      
      native AS3 function child(param1:*) : XMLList;
      
      native AS3 function children() : XMLList;
      
      native AS3 function comments() : XMLList;
      
      native AS3 function contains(param1:*) : Boolean;
      
      native AS3 function copy() : XMLList;
      
      native AS3 function descendants(param1:* = "*") : XMLList;
      
      native AS3 function elements(param1:* = "*") : XMLList;
      
      native AS3 function hasComplexContent() : Boolean;
      
      native AS3 function hasSimpleContent() : Boolean;
      
      native AS3 function length() : int;
      
      native AS3 function name() : Object;
      
      native AS3 function normalize() : XMLList;
      
      native AS3 function parent() : *;
      
      native AS3 function processingInstructions(param1:* = "*") : XMLList;
      
      native AS3 function text() : XMLList;
      
      native AS3 function toXMLString() : String;
      
      native AS3 function addNamespace(param1:*) : XML;
      
      native AS3 function appendChild(param1:*) : XML;
      
      native AS3 function childIndex() : int;
      
      native AS3 function inScopeNamespaces() : Array;
      
      native AS3 function insertChildAfter(param1:*, param2:*) : *;
      
      native AS3 function insertChildBefore(param1:*, param2:*) : *;
      
      native AS3 function nodeKind() : String;
      
      native private function _namespace(param1:*, param2:int) : *;
      
      AS3 function namespace(prefix:* = null) : *
      {
         return Boolean(arguments.length)?this._namespace(prefix,1):this._namespace(null,0);
      }
      
      native AS3 function localName() : Object;
      
      native AS3 function namespaceDeclarations() : Array;
      
      native AS3 function prependChild(param1:*) : XML;
      
      native AS3 function removeNamespace(param1:*) : XML;
      
      native AS3 function replace(param1:*, param2:*) : XML;
      
      native AS3 function setChildren(param1:*) : XML;
      
      native AS3 function setLocalName(param1:*) : void;
      
      native AS3 function setName(param1:*) : void;
      
      native AS3 function setNamespace(param1:*) : void;
      
      AS3 function toJSON(k:String) : *
      {
         return this.toJSON(k);
      }
   }
}
