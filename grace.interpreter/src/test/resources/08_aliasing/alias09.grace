trait A {
  method f { 5; };
  method g { 6; };
};

trait B {
  method h { 7; };
  method i { 8; };
};

object {
  use A alias j = f alias k = g;
  use B alias l = h alias m = i;
  print(j);
  print(k);
  print(l);
  print(m);
};