method f (a) {
  def c = 3;
  def d = c + 1;
  object {
    method h {
      print(a); // should be fine
      print(c); // should work fine
      print(d);
      print(b); // errr
    };
    method g (b) {
      print(a);
      print(b);
      print(c);
      print(d);
      h;
    };
  };
};

f(1).g(2);