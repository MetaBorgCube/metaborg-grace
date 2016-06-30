class superduper {
  method w { "disturb?"; };
};

class supersuper {
  inherit superduper;
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
};
