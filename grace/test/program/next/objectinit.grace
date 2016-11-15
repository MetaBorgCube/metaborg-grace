class A {
  method f { 3; };
  def a = 3;
  print "hey from A";
};

class B{
  inherit A;
  method f { 4; };
  def a = 4;
  print "hey from B";
};

object {
  inherit B;
  def a = 5;
  method f { 5; };
  print(f);
  print("hey");
};
