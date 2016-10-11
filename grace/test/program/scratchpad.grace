class supersuper {
  method a(w) { w; };
  method w { "supersuper"; };
};

class super {
  inherit supersuper;
  method a(w) { w; };
//  method w { "super"; };
};

method a(i) { i; };
method w { "from outer"; };

object {
  inherit super;
  method a(w) { w; };
//  method w { "local"; };
  base_print(a 1);
  base_print(w);
};
