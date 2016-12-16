class A {
  method f(a, x, y, z)  {
    print("A.f");
  };
};

class B {
  inherit outer.A;
  
  method f(x, y, z) {
    print("B.f");
  };
};

self.A.f(1, 2, 3, 4);
self.B.f(1, 2, 3);
