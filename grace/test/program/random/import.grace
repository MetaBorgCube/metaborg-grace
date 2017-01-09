import "import1" as i1
import "import2" as i2

def test = object {
  method testMethod { 5; };
};

method program { };

self.test.testMethod;
print(self.i1.import1);
print(self.i2.import2);

print "done";

method f {
  def a = 5;
  print(a);
};

self.f;