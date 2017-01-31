trait A {
  method f { 5; };
};

trait B {
  method f { 7; };
};

object {
  use A;
  use B exclude f;
  print(f);
};