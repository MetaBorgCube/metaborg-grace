class A {
  method a {
    self.f;
  };

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

self.A.a;
self.B.a;
