class A {
  method f(a, x, y, z)  {
    print("A.f");
  };
};

class B {
  inherit A;
  
  method f(x, y, z) {
    print("B.f");
  };
};

A.f(1, 2, 3, 4);
B.f(1, 2, 3);
