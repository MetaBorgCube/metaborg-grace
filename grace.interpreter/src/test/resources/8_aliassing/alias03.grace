class A {
  method f { 5; };
  method g { 6; };
};

object {
  inherit A alias f' = f alias g' = g;
  print(f);
  print(f');
  print(g);
  print(g');
};