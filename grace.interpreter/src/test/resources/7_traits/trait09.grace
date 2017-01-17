class A {
  method f { 5; };
};

trait t1 {
  method g { 6; };
};

trait t2 {
  method h { 7; };
};

object {
  inherit A;
  use t1;
  use t2;
  print(f);
  print(g);
  print(h);
};