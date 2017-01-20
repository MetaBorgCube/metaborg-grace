class A {
  method f { 5; };
};

class B {
  inherit A;
};

object {
  inherit B alias g = f;
  print(g);
};