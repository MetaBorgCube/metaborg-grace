class A {
  method f  {
    1;
  };
};

class B {
  inherit outer.A;
  
  def x is readable = self.f;
  
  method f {
    2;
  };
  
};

print(self.B.x);