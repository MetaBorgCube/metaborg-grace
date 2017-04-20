
def o = object {
  import "animals" as a is confidential;
  print "initialising cat module";
  print(a.mammal);
  
  class cat {
//      inherit a.mammal;
      method species { "cat"; };
      print(a.mamal);
  };
  print "cat module done";
};
