object {

  method A {
      object {
          f; // this should not be resolved
          
      };
  };
  
  def x = object {
      inherit outer.A;
      
      def f is public = 33;
   
  };
  
};