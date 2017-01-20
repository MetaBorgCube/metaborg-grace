class A {
  method f { 5; };
};

object {
  inherit A exclude f;
  print(f); // error because f does not exist
};