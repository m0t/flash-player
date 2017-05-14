package flash.net
{
   [native(instance="DynamicPropertyOutputObject",methods="auto",cls="DynamicPropertyOutputClass",construct="native",gc="exact")]
   class DynamicPropertyOutput implements IDynamicPropertyOutput
   {
       
      
      function DynamicPropertyOutput()
      {
         super();
      }
      
      native public function writeDynamicProperty(param1:String, param2:*) : void;
   }
}
