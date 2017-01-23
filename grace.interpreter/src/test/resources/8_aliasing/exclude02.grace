class A {
  method f(n) { n; };
};

object {
  inherit A exclude f(_);
  print(f(5)); // error because f(_) does not exist
};