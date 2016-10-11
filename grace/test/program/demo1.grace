class foo {
  method f { 4; };
  base_print "hello";
};

object {
  def f = 5;
  object {
    inherit foo;
    base_print(f);
  };
};
