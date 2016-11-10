def module = "module";
def evenBetterScoping = 0;
print(evenBetterScoping);
def a = object {
  def objectA = "a";
  def properScoping = 1;
  
  method f {
    def methodF = "f";
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

