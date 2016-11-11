print "the module object";
def modulescope = 0;
def a = object {
  print "the a object: ";
  print "outer of the a object: ";
    
  method f {
    print "the method self: ";
    print "the outer of the method: ";
    def modulescope = 13;
    print(modulescope);
  };
  
};

a.f;

object {
  object {
    print "second try";
    a.f;   
  };
};

