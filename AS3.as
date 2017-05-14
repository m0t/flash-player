package
{
   public namespace AS3 = "http://adobe.com/AS3/2006/builtin";
}

[native(instance="MethodClosure",methods="auto",cls="MethodClosureClass",construct="instance",gc="exact")]
final class MethodClosure extends Function
{
    
   
   function MethodClosure()
   {
      super();
   }
   
   override public function get prototype() : *
   {
      return null;
   }
   
   override public function set prototype(p:*) : *
   {
      Error.throwError(ReferenceError,1074,"prototype","MethodClosure");
   }
}
