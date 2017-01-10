def x1 = 42;

method A {
  object {
    var x1;
  };
};

method B {
  object {
    inherit A;
    x1;
  };
};