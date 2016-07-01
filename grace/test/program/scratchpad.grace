class supersuper {
  method w { "disturb!"; };
  method a(w) { w; };
};

class super {
  inherit supersuper;
  method a(w) { w; };
  method w { "disturb!"; };
};

object {
  inherit super;
  method a(w) { w; };
  method w { "disturb!"; };
  base_print(a(1));
  base_print(w);
};
