class A {
  method f  {
    1;
  };
};

class B {
  inherit A;
  
  def x is readable = f;
  
  method f {
    2;
  };
  
};

print(B.x);