trait t1 {
  method f { 5; };
};

trait t2 {
  use t1;
  method g { 6; };
};

object {
  use t2;
  print(f);
  print(g);
};