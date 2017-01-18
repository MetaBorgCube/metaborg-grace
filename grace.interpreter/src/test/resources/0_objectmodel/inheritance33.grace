method A {
  def n = 42;
  object {
    method f { n; }; // and here
  };
};

object {
  inherit A;
  print(f);
};
