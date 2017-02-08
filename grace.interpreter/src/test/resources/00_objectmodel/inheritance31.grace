class A {
  method f { 5; };
};

method f { 3; };

object {
  inherit A;
  method obj { };
  print(f); // should give error on call
};