class A {
  method f {
    print("A.f");
  };
};

class B {
  inherit outer.A;
  
};

self.A.f;
self.B.f;