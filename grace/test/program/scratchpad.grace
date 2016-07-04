trait test {
  method f(a) { a; };
};

class supersuper {
  inherit super;
  use test;
  var a := 3;
  var x;
  def b = 4;
  method a (w) is public { w; };
  method w is public, confidential { "supersuper"; };
};

class super {
  inherit supersuper alias x as y exclude a, b;
  method a(w) { w; };
  foo.a;
  foo.a (b);
  foo.a (b) d (e);
  method w { "super"; };
};

class super {
  method a { 5; };
};

method if(cond) then (blk1) else (blk2) {
  conf.ifTrue(blk1) ifFalse(blk2);
};

method a(i) { i; };

method w { "from outer"; };
def blk = { a -> a + 1; };
object {
  inherit super;
  method a(w) { w; };
//  method w { "local"; };
  base_print(a 1);
  base_print(w);
};

