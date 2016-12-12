class A {
  method f {
    print("A.f");
  };
};

class B {
  inherit A;
  
};

A.f;
B.f;