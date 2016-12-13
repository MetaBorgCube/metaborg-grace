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
  inherit A;
  
  def myconst = 1;
  
  method f(theblock) {
    theblock.apply(myconst);
  };
  
  method increase(x) {
      x + 101;
  };
  
};

def myB = B;

def result = myB.f({ x -> myB.increase(x); });

print(result);