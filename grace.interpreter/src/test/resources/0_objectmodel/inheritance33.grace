method A {
  def n = 42;
  object {
    method f { n; }; // n should be local here
  };
};

object {
  inherit A;
  print(f);
};
