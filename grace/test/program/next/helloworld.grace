print "the module object";
print(self);
def modulescope = 0;
def a = object {
  print "the a object: ";
  print(self);
    
  method f {
    print "the method self: ";
    print(self); // a or module?
    print(modulescope);
  };
  
};

a.f;

