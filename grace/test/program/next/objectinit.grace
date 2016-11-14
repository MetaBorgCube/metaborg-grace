class A {
  print "created class A";
  def a = 5;
  
  method f { a; };
  
};


object {
  inherit A;
  def a = 3;
  method f { a; };
  print(f);
};