method t1 {
  def n = 42;
  object {
    method f { n; };
  };
};

object {
  inherit t1;
  print(f);
};
