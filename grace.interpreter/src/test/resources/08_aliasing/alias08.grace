class A {
  def f = 5;
};

class B {
  inherit A alias g = f;
};

object {
  inherit B alias h = g;
  print(h);
};