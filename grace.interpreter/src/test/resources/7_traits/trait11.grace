trait t1(n) {
  method f { n; };
};

object {
  use t1(5);
  print(f);
};