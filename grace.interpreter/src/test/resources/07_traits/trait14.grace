

trait A {
  method foo {
    print("foo in A");
  };
};

trait B {
  method foo(a, b, c) {
    print("foo in B");
  };
};

class C {
  use A;
  use B;
};

C.foo;