method A {
  def n = 42;
  object {
    // n needs to be a local here
    print(n);
  };
};

object {
  inherit A;
};
