object {

  method A {
      object {
          f;
          
      };
  };
  
  def x = object {
      inherit outer.A;
      
      def f is public = 33;
   
  };
  
};