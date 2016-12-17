class A {
  def myconst = 41;
    
  method f(myblock)  {
    1;
  };
  
  method increase(x) {
    x + 1;
  };
};

class B {
  inherit outer.A;
  
  method f(theblock) {
    theblock.apply(self.myconst);
  };
  
  method increase(x) {
      x + 101;
  };
  
};

def myB = self.B;

def result = self.myB.f({ x -> outer.myB.increase(x); });

print(self.result);