object {
  method A {
      object {
          method f {
              11;
          };
          
          print("Init A");
          
      };
  };
  
  def B = object {
      inherit outer.A;
  
      print("Init B/1");
      
      def f is public = 13;
      
      print("Init B/2");
      print(self.f);
  };
};