class A {
//  print "created class A";
  def a = 4;
//  method f { 4; };
};


object {
  inherit A;
  def a = 5;
//  method f { 5; };
  print(a);
};
