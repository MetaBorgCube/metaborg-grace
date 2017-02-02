trait t1 {
  method f { 5; };
};

trait t2 {
  method f { 6; };
};

object {
  use t1;
  use t2 alias g = f exclude f; // exclusion of f allows object to be correctly instantiated
  
  print(f);
  print(g);
};