class A {
  method f  {
    print("A.f");
  };
};

class B {
  inherit A;
  
  method f {
    print("B.f");
  };
  
  f;
  self.f;
};

B;