trait A {
  method f { 5; };
};

object {
  use A alias g = f;
  print(g);
};