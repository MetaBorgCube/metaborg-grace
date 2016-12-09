method A {
  object {
    method f {
      print "A";
    };
    method g {
      print "from A";
    };
  };
};

method B {
  object {
    inherit A;
    method f {
      print "B";
    };
  };
};

def a = B;

a.f;

a.g;

f;

g;