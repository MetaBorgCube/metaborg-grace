class A {
  method foo {
    print("foo in A");
  };
};

trait B {
  method foo {
    print("foo in B");
  };
};

class C {
  inherit A;
  use B;
};

C.foo;