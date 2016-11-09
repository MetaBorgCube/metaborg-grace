
method a (arg) {
  def d = 42;
  arg;
};

method b {
  def d = 12;
  a(d);
  d;
};

base_print(a(1));
base_print(b);

//method b { 2; };
//object {
//  object {
//    base_print(b);
//  };
//};
