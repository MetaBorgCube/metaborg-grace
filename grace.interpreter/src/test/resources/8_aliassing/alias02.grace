class A {
  method f(n) { n; };
};

object {
  inherit A alias g(_) = f(_);
  print(g(5));
};