def x1 = 42;

method A {
  object {
    var x1;
  };
};

method B {
  object {
    inherit A;
    x1; // both inherited and enclosing scope, should error
  };
};
B; // minigrace will error without even calling