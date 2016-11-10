//def evenBetterScoping = 0;
def a = object {
  def properScoping = 1;
  
  method f {
    print "f";
    def test = 2;
  
    print(self);
    print(evenBetterScoping);
    print(properScoping);
    print(test);
  };
  print "hey";
  
} ;

a.f;

