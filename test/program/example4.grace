def a = object { 
  def b = 3;
  method f {
    base_print "f in a invoked";
    4;
  };
  5;
  b;
  base_print "hoi";
  base_print 1;
};

method f (e,g) {
  e;
  g;
};

f(1,2);

a.f;

base_add(1,2);
base_print 1;
