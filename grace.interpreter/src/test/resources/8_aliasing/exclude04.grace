trait A {
  method f { 5; };
};

object {
  use A exclude f;
  print(f); // should error 
};