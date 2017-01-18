trait t1 {
  method f { 5; };
};

method f { 3; };

object {
  use t1;
  print(f); // should give error on call
};