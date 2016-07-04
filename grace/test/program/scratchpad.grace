class super {
  method a (w) { w; };
  method w { "super"; };
};

object {
  inherit super;
  def lambda = { a -> a + 1; };
  a 1;
};
