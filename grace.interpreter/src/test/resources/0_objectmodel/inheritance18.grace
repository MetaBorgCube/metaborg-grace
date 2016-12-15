object {
  method A {
      object {
          def g is public = { print("A.g - init"); 13; }.apply;
          
          method f {
              print("A.f - apply");
              11;
          };
          
          f;
          g;
      };
  };
  
  method B {
      object {
          inherit A;
          
          def f is public = { print("B.f - init"); 17; }.apply;
       
          method g {
              print("B.g - apply");
              23;
          };
          
          f;
          g;
      };
  };
  
  print("INIT myA >>>>>>>>");
  def myA = A;
  print("<<<<<< INIT myA");
  print("INIT myB >>>>>>>>");
  def myB = B;
  print("<<<<<< INIT myB");
  
  print(myA.f);
  print(myA.g);
  print(myB.f);
  print(myB.g);
};
