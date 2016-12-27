method foo {
  object{
    method f { 4; };
    print "hello";
  };
};

object {
  def f = 5;
  object {
    inherit outer.outer.foo;
    print(self.f);
  };
};
