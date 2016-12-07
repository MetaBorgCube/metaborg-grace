method f (a) {
  def c = 3;
  object {
    method h {
      print(a); // should be fine
      print(c); // should work fine
      print(b); // errr
    };
    method g (b) {
      print(a);
      print(c);
      print(b);
      h;
    };
  };
};

f(1).g(2);