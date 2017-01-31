class A {
  method f { 5; };
  method h { f; };
};

trait B {
  method p { 6; };
};

object {
  inherit A exclude f;
  use B alias f = p;
  print(h);
};