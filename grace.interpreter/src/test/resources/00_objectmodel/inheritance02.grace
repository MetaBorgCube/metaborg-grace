class A {
  method f {
    print("A.f");
  };
};

class B {
  inherit outer.A;
  
  method f {
    print("B.f");
  };
};

self.A.f;
self.B.f;
