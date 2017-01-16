class A {
  def a is confidential = 5;
};

class B {
  inherit A;
  print(a);
};

B;