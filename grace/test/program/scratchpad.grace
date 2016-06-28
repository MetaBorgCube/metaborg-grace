method print(a) {
  base_print(a);
};

class super {
  method a { base_print(5); };
};

method a { base_print(4); };

object {
//  inherit super;
//  method a { base_print(6); };
  a;
};