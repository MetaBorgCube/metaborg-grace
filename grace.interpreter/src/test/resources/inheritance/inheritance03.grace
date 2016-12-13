class A {
  method a {
    self.f;
  };

  method f {
    print("A.f");
  };
};

class B {
  inherit A;
  
  method f {
    print("B.f");
  };
};

A.a;
B.a;
