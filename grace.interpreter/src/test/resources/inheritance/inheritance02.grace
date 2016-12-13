class A {
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

A.f;
B.f;
