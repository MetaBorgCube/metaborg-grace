object {
  method A {
      object {
          def g is public = { print("A.g - init"); 13; }.apply;
          
          method f {
              print("A.f - apply");
              11;
          };
          
          self.f;
          self.g;
      };
  };
  
  method B {
      object {
          inherit outer.A;
          
          def f is public = { print("B.f - init"); 17; }.apply;
       
          method g {
              print("B.g - apply");
              23;
          };
          
          self.f;
          self.g;
      };
  };
  
  print("INIT myA >>>>>>>>");
  def myA = self.A;
  print("<<<<<< INIT myA");
  print("INIT myB >>>>>>>>");
  def myB = self.B;
  print("<<<<<< INIT myB");
  
  print(self.myA.f);
  print(self.myA.g);
  print(self.myB.f);
  print(self.myB.g);
};
