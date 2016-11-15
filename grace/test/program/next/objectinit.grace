class A {
//  print "created class A";
  def a = 4;
  method f { a; };
};


object {
  inherit A;
  def a = 5;
  method f { 2; };
  print(f);
};
