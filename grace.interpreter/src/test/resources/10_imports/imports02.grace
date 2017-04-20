
def o = object {
  import "animals" as a is public;
  print "initialising cat module";
  class cat {
      inherit a.mammal;
      method species { "cat"; };
  };
  print "cat module done";
};

print(o.a.mammal);