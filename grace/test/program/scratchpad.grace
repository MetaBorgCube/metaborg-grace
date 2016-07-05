method print (obj) {
  base_print(obj.asString);
};

class super {
  method a (blk) { blk.apply; };
};

object {
  inherit super;
  
  print(true);
  
  base_print(a({1;}));
};
