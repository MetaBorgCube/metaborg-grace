trait A {
  method f { 5; };
};

trait B {
  method f { 6; };
};

object {
  use A alias g = f;
  use B;
  print(f);
};