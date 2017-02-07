object {
  method A {
      object {
          { print("Call f"); }.apply;
          
          method f {
              print("A.f");
              11;
          };
      };
  };
  
  def x = object {
      inherit outer.A;
      
      def f is public = { print("B.f"); 13; }.apply;
  };
  
  print(self.x.f);
};