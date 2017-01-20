class A {
  method f { 5; };
};

object {
  inherit A alias g = f;
  print(g);
};