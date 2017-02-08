class A {
  var f := 5;
};

class B {
  inherit A alias g = f;
};

object {
  inherit B alias h = g;
  print(h);
  print(f);
};