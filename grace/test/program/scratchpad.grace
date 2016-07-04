trait test (cond) then (then) {
  method f(a) { a; };
};

class supersuper {
  inherit super;
  def b = 4;
  method a (w) is public { w; };
  method w is public, confidential { "supersuper"; };
};

class super {
  inherit supersuper;
  method a(w) { w; };
  method w { "super"; };
  method prefix -- (a) is public { a-1; };
};

class super {
  method a { 5; };
};

method if(cond) then (blk1) else (blk2) {
  conf.ifTrue(blk1) ifFalse(blk2);
};

method a { 1; };

method w { "from outer"; };
def blk = { a -> a + 1; };
object {
  inherit super;
  method a(w) { w; };
  method w { "local"; };
  base_print(a 1);
  base_print(w);
};

