class A {
  method f { 5; };
};

class B {
  inherit A;
};

object {
  inherit B exclude f;
  print(g); // error
};