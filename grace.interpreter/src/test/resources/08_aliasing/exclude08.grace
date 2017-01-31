class A {
  method f { 5; };
  method h { f; };
};

trait B {
  method f { 6; };
};

object {
  inherit A exclude f;
  use B;
  print(h);
};