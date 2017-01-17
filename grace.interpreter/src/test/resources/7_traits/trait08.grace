trait t1 {
  method f { 5; };
};

trait t2 {
  method g { 6; };
};

object {
  use t1;
  use t2;
  print(f);
  print(g);
};